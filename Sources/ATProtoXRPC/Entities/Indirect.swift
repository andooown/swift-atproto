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

public protocol IndirectLexiconEncodable {
    func encode(forIndirectTo encoder: Encoder) throws
}

extension Date: IndirectLexiconEncodable {
    public func encode(forIndirectTo encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension URL: IndirectLexiconEncodable {
    public func encode(forIndirectTo encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Indirect: Encodable where T: Encodable {
    public func encode(to encoder: Encoder) throws {
        switch self {
        case .wrapped(let x):
            if let encodableX = x as? IndirectLexiconEncodable {
                try encodableX.encode(forIndirectTo: encoder)
            } else {
                try x.encode(to: encoder)
            }
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

extension URL: IndirectLexiconDecodable {
    public init(forIndirect decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self = try container.decode(URL.self)
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

public extension KeyedEncodingContainer {
    mutating func encode<T>(_ value: Indirect<T?>, forKey key: KeyedEncodingContainer<K>.Key) throws where T : Encodable {
        try encodeIfPresent(value.wrappedValue, forKey: key)
    }
}
