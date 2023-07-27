public struct AccessToken: Codable {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

public struct RefreshToken: Codable {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

public struct Session: Codable {
    public let accessJWT: AccessToken
    public let refreshJWT: RefreshToken

    public init(accessJWT: AccessToken, refreshJWT: RefreshToken) {
        self.accessJWT = accessJWT
        self.refreshJWT = refreshJWT
    }
}
