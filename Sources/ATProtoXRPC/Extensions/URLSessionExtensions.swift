import Foundation

#if canImport(FoundationNetworking)
    extension URLSession {
        func data(for request: URLRequest) async throws -> (Data, URLResponse) {
            try await withCheckedThrowingContinuation { continuation in
                dataTask(with: request) { data, response, error in
                    if let error = error {
                        continuation.resume(throwing: error)
                        return
                    }

                    guard let data = data, let response = response else {
                        continuation.resume(throwing: NSError(domain: "unknown", code: -1))
                        return
                    }

                    continuation.resume(returning: (data, response))
                }
                .resume()
            }
        }
    }
#endif
