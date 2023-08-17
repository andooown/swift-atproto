import Foundation

public struct XRPCSessionClient {
    public enum Error: Swift.Error {
        case buildingURLRequestFailed
        case unacceptableStatusCode(Int, errorResponse: XRPCErrorResponse?)
        case decodingResponseFailed(error: Swift.Error, data: Data)
        case refresingSessionFailed(by: Swift.Error, original: Swift.Error)
        case unknown(underlying: Swift.Error?)
    }

    private let baseURL: URL
    private let urlSession: URLSession
    private let sessionProvider: SessionProvider

    public init(
        baseURL: URL,
        urlSession: URLSession,
        sessionProvider: SessionProvider
    ) {
        self.baseURL = baseURL
        self.urlSession = urlSession
        self.sessionProvider = sessionProvider
    }
}

extension XRPCSessionClient: XRPCClient {
    public func send<R>(_ request: R) async throws -> R.Output where R: XRPCRequest {
        let originalError: Swift.Error
        do {
            let urlRequest = try buildRequest(from: request)
            let response = try await sendRequest(urlRequest, type: R.Output.self)
            return response
        } catch {
            guard
                case .unacceptableStatusCode(_, errorResponse: let errorResponse?) = error as? Error,
                case .errorCode(.expiredToken) = errorResponse.error
            else {
                throw error
            }

            originalError = error
        }

        do {
            try await refreshSession()
        } catch {
            throw Error.refresingSessionFailed(by: error, original: originalError)
        }

        let urlRequest = try buildRequest(from: request)
        return try await sendRequest(urlRequest, type: R.Output.self)
    }
}

private extension XRPCSessionClient {
    var encoder: JSONEncoder {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase

        return encoder
    }

    var decoder: JSONDecoder {
        JSONDecoder.forXRPC
    }

    func buildRequest<R>(from request: R) throws -> URLRequest where R: XRPCRequest {
        guard
            var urlComponent = URLComponents(
                url: baseURL.appending(path: request.requestIdentifier),
                resolvingAgainstBaseURL: false
            )
        else {
            throw Error.buildingURLRequestFailed
        }
        urlComponent.queryItems = request.parameters.queryItems

        guard let url = urlComponent.url else {
            throw Error.buildingURLRequestFailed
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.type.httpMethod

        if let input = request.input {
            urlRequest.httpBody = try encoder.encode(input)
        }
        if urlRequest.httpBody != nil {
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }

        if let accessJWT = sessionProvider.session?.accessJWT {
            urlRequest.setValue("Bearer \(accessJWT.rawValue)", forHTTPHeaderField: "Authorization")
        }

        return urlRequest
    }

    func sendRequest<Response>(_ request: URLRequest, type: Response.Type) async throws -> Response
    where Response: Decodable {
        let (data, response) = try await urlSession.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse else {
            throw Error.unknown(underlying: nil)
        }

        switch httpResponse.statusCode {
        case 200..<300:
            let decoded: Response
            do {
                decoded = try decoder.decode(Response.self, from: data)
            } catch {
                throw Error.decodingResponseFailed(error: error, data: data)
            }

            return decoded

        default:
            let errorResponse = try? decoder.decode(XRPCErrorResponse.self, from: data)
            throw Error.unacceptableStatusCode(
                httpResponse.statusCode,
                errorResponse: errorResponse
            )
        }
    }

    func refreshSession() async throws {
        var urlRequest = try buildRequest(from: XRPCRequests.RefreshSession())
        urlRequest.setValue(
            "Bearer \(sessionProvider.session?.refreshJWT.rawValue ?? "")",
            forHTTPHeaderField: "Authorization"
        )

        let response = try await sendRequest(
            urlRequest,
            type: XRPCRequests.RefreshSession.Output.self
        )
        sessionProvider.session = response.toSession()
    }
}

private extension XRPCRequestType {
    var httpMethod: String {
        switch self {
        case .query:
            return "GET"

        case .procedure:
            return "POST"
        }
    }
}

private extension ISO8601DateFormatter {
    convenience init(options: Options) {
        self.init()
        formatOptions = options
    }

    static let withFractionalSeconds = ISO8601DateFormatter(options: [.withInternetDateTime, .withFractionalSeconds])
    static let withTimeZone = ISO8601DateFormatter(options: [.withInternetDateTime, .withTimeZone])
}
