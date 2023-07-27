import Foundation

public enum XRPCRequests {
    public struct CreateSession: XRPCRequest {
        public struct Input: Encodable {
            public let identifier: String
            public let password: String

            public init(
                identifier: String,
                password: String
            ) {
                self.identifier = identifier
                self.password = password
            }
        }

        public typealias Output = SessionResponse

        public init(
            input: Input
        ) {
            self.input = input
        }

        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createSession"
        public let input: Input?
    }

    public struct RefreshSession: XRPCRequest {
        public typealias Output = SessionResponse

        public init() {}

        public let type: XRPCRequestType = .procedure
        public let requestIdentifier = "com.atproto.server.refreshSession"
    }

    public struct SessionResponse: Decodable {
        public enum CodingKeys: String, CodingKey {
            case accessJWT = "accessJwt"
            case refreshJWT = "refreshJwt"
            case handle
            case did
        }

        public let accessJWT: String
        public let refreshJWT: String
        public let handle: String
        public let did: String

        public func toSession() -> Session {
            Session(
                accessJWT: AccessToken(rawValue: accessJWT),
                refreshJWT: RefreshToken(rawValue: refreshJWT)
            )
        }
    }
}
