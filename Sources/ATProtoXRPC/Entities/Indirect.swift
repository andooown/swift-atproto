import Foundation

/// Property Wrapper to avoid recursive struct definition in generated schema
/// https://forums.swift.org/t/using-indirect-modifier-for-struct-properties/37600/14
@propertyWrapper
public indirect enum Indirect<T> {
    case wrapped(T)

    public var wrappedValue: T {
        get {
            switch self {
            case .wrapped(let x): return x
            }
        }
        set { self = .wrapped(newValue) }
    }
}

extension Indirect: Encodable where T: Encodable {
    public func encode(to encoder: Encoder) throws {
        switch self {
        case .wrapped(let x):
            try x.encode(to: encoder)
        }
    }
}

public protocol IndirectLexiconDecodable {
    init(forIndirect decoder: Decoder) throws
}

extension Date: IndirectLexiconDecodable {
    public init(forIndirect decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self = try container.decode(Date.self)
    }
}

extension Indirect: Decodable where T: Decodable {
    public init(from decoder: Decoder) throws {
        if let decodableType = T.self as? IndirectLexiconDecodable.Type {
            self = .wrapped(try decodableType.init(forIndirect: decoder) as! T)
        } else {
            self = .wrapped(try T(from: decoder))
        }
    }

    private static func decodeURL(decoder: Decoder) throws -> URL {
        let value = try String(from: decoder)
        guard let url = URL(string: value) else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Invalid URL string."
                )
            )
        }

        return url
    }

    //    private static func decodeDate(decoder: Decoder) throws -> Date {
    //        let value = try String(from: decoder)
    //
    //        let formatter = DateFormatter()
    //        formatter.locale = Locale(identifier: "en_US_POSIX")
    //        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
    //        guard let url = URL(string: value) else {
    //            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Invalid URL string."))
    //        }
    //
    //        return url
    //    }
}

extension Indirect: Equatable where T: Equatable {}
extension Indirect: Hashable where T: Hashable {}

// Workaround:
//   Property Wrapper is decoded by decode(_:forKey:) even though T is Optional.
//   It causes keyNotFound error during decoding. This extension can prevent this
//   issue.
//   https://forums.swift.org/t/using-property-wrappers-with-codable/29804/12
public extension KeyedDecodingContainer {
    func decode<T>(_ type: Indirect<T?>.Type, forKey key: Self.Key) throws -> Indirect<T?>
    where T: Decodable {
        return try decodeIfPresent(type, forKey: key) ?? .wrapped(nil)
    }
}
