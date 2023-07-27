import Foundation

public struct EmptyInput: Encodable {
    public init() {}
}

public struct EmptyOutput: Decodable {
    public init() {}
}

public enum XRPCRequestType {
    case query
    case procedure
}

public protocol XRPCRequest {
    associatedtype Parameters: XRPCRequestParametersConvertible = EmptyParameters
    associatedtype Input: Encodable = EmptyInput
    associatedtype Output: Decodable = EmptyOutput

    var type: XRPCRequestType { get }
    var requestIdentifier: String { get }
    var parameters: Parameters { get }
    var input: Input? { get }
}

public extension XRPCRequest {
    var input: Input? { nil }
}

public extension XRPCRequest where Parameters == EmptyParameters {
    var parameters: Parameters {
        EmptyParameters()
    }
}
