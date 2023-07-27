import Foundation

public protocol XRPCClient {
    func send<R>(_ request: R) async throws -> R.Output where R: XRPCRequest
}

public extension XRPCClient {
    func send<R>(_ request: R) async throws where R: XRPCRequest, R.Output == EmptyOutput {
        _ = try await send(request)
    }
}

public struct XRPCClientMock: XRPCClient {
    public init() {}

    public func send<R>(_ request: R) async throws -> R.Output where R: XRPCRequest {
        throw NSError()
    }
}
