public struct XRPCErrorResponse: Hashable, Decodable {
    public let error: XRPCError
    public let message: String?

    public init(error: XRPCError, message: String?) {
        self.error = error
        self.message = message
    }
}
