import ATProtoCore
import Foundation

public protocol XRPCRequestParameterConvertible {
    func toQueryItems(name: String) -> [URLQueryItem]
}

public protocol XRPCRequestParametersConvertible {
    var queryItems: [URLQueryItem] { get }
}

public struct EmptyParameters: XRPCRequestParametersConvertible {
    public init() {}

    public let queryItems: [URLQueryItem] = []
}

extension String: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        [URLQueryItem(name: name, value: self)]
    }
}

extension Int: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        [URLQueryItem(name: name, value: "\(self)")]
    }
}

extension Bool: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        [URLQueryItem(name: name, value: self ? "true" : "false")]
    }
}

extension Date: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions.insert(.withFractionalSeconds)
        return [URLQueryItem(name: name, value: formatter.string(from: self))]
    }
}

extension ATURI: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        [URLQueryItem(name: name, value: toString())]
    }
}

extension Optional: XRPCRequestParameterConvertible where Wrapped: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        switch self {
        case .some(let wrapped):
            return wrapped.toQueryItems(name: name)

        case .none:
            return []
        }
    }
}

extension Array: XRPCRequestParameterConvertible where Element: XRPCRequestParameterConvertible {
    public func toQueryItems(name: String) -> [URLQueryItem] {
        flatMap {
            $0.toQueryItems(name: name)
        }
    }
}
