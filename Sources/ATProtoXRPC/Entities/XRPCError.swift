public enum XRPCError: Hashable, Decodable {
    public enum XRPCErrorCode: String {
        case expiredToken = "ExpiredToken"
    }

    case errorCode(XRPCErrorCode)
    case unknown(String)

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self = XRPCErrorCode(rawValue: value).map(XRPCError.errorCode) ?? .unknown(value)
    }
}
