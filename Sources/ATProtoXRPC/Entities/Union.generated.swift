

import Foundation

private enum UnionTypeCodingKeys: String, CodingKey {
    case type = "$type"
}


// Union1

public enum Union1<T0> {

    case type0(T0)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union1: Encodable where T0: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union1: Decodable where T0: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union1: Equatable where T0: Equatable {}
extension Union1: Hashable where T0: Hashable {}


// Union2

public enum Union2<T0, T1> {

    case type0(T0)
    case type1(T1)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union2: Encodable where T0: UnionEncodable, T1: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union2: Decodable where T0: UnionDecodable, T1: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union2: Equatable where T0: Equatable, T1: Equatable {}
extension Union2: Hashable where T0: Hashable, T1: Hashable {}


// Union3

public enum Union3<T0, T1, T2> {

    case type0(T0)
    case type1(T1)
    case type2(T2)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union3: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union3: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union3: Equatable where T0: Equatable, T1: Equatable, T2: Equatable {}
extension Union3: Hashable where T0: Hashable, T1: Hashable, T2: Hashable {}


// Union4

public enum Union4<T0, T1, T2, T3> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union4: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union4: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union4: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable {}
extension Union4: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable {}


// Union5

public enum Union5<T0, T1, T2, T3, T4> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)
    case type4(T4)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }
    public var asType4: T4? {
        guard case .type4(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union5: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type4(let value):
            try typeContainer.encode(T4.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union5: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        case T4.typeValue:
            self = .type4(try T4(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union5: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable {}
extension Union5: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable {}


// Union6

public enum Union6<T0, T1, T2, T3, T4, T5> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)
    case type4(T4)
    case type5(T5)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }
    public var asType4: T4? {
        guard case .type4(let value) = self else {
            return nil
        }
        return value
    }
    public var asType5: T5? {
        guard case .type5(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union6: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type4(let value):
            try typeContainer.encode(T4.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type5(let value):
            try typeContainer.encode(T5.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union6: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        case T4.typeValue:
            self = .type4(try T4(from: decoder))
        case T5.typeValue:
            self = .type5(try T5(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union6: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable {}
extension Union6: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable {}


// Union7

public enum Union7<T0, T1, T2, T3, T4, T5, T6> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)
    case type4(T4)
    case type5(T5)
    case type6(T6)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }
    public var asType4: T4? {
        guard case .type4(let value) = self else {
            return nil
        }
        return value
    }
    public var asType5: T5? {
        guard case .type5(let value) = self else {
            return nil
        }
        return value
    }
    public var asType6: T6? {
        guard case .type6(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union7: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type4(let value):
            try typeContainer.encode(T4.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type5(let value):
            try typeContainer.encode(T5.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type6(let value):
            try typeContainer.encode(T6.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union7: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        case T4.typeValue:
            self = .type4(try T4(from: decoder))
        case T5.typeValue:
            self = .type5(try T5(from: decoder))
        case T6.typeValue:
            self = .type6(try T6(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union7: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable {}
extension Union7: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable {}


// Union8

public enum Union8<T0, T1, T2, T3, T4, T5, T6, T7> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)
    case type4(T4)
    case type5(T5)
    case type6(T6)
    case type7(T7)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }
    public var asType4: T4? {
        guard case .type4(let value) = self else {
            return nil
        }
        return value
    }
    public var asType5: T5? {
        guard case .type5(let value) = self else {
            return nil
        }
        return value
    }
    public var asType6: T6? {
        guard case .type6(let value) = self else {
            return nil
        }
        return value
    }
    public var asType7: T7? {
        guard case .type7(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union8: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type4(let value):
            try typeContainer.encode(T4.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type5(let value):
            try typeContainer.encode(T5.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type6(let value):
            try typeContainer.encode(T6.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type7(let value):
            try typeContainer.encode(T7.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union8: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        case T4.typeValue:
            self = .type4(try T4(from: decoder))
        case T5.typeValue:
            self = .type5(try T5(from: decoder))
        case T6.typeValue:
            self = .type6(try T6(from: decoder))
        case T7.typeValue:
            self = .type7(try T7(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union8: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable {}
extension Union8: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable {}


// Union9

public enum Union9<T0, T1, T2, T3, T4, T5, T6, T7, T8> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)
    case type4(T4)
    case type5(T5)
    case type6(T6)
    case type7(T7)
    case type8(T8)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }
    public var asType4: T4? {
        guard case .type4(let value) = self else {
            return nil
        }
        return value
    }
    public var asType5: T5? {
        guard case .type5(let value) = self else {
            return nil
        }
        return value
    }
    public var asType6: T6? {
        guard case .type6(let value) = self else {
            return nil
        }
        return value
    }
    public var asType7: T7? {
        guard case .type7(let value) = self else {
            return nil
        }
        return value
    }
    public var asType8: T8? {
        guard case .type8(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union9: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type4(let value):
            try typeContainer.encode(T4.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type5(let value):
            try typeContainer.encode(T5.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type6(let value):
            try typeContainer.encode(T6.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type7(let value):
            try typeContainer.encode(T7.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type8(let value):
            try typeContainer.encode(T8.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union9: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        case T4.typeValue:
            self = .type4(try T4(from: decoder))
        case T5.typeValue:
            self = .type5(try T5(from: decoder))
        case T6.typeValue:
            self = .type6(try T6(from: decoder))
        case T7.typeValue:
            self = .type7(try T7(from: decoder))
        case T8.typeValue:
            self = .type8(try T8(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union9: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable {}
extension Union9: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable {}


// Union10

public enum Union10<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9> {

    case type0(T0)
    case type1(T1)
    case type2(T2)
    case type3(T3)
    case type4(T4)
    case type5(T5)
    case type6(T6)
    case type7(T7)
    case type8(T8)
    case type9(T9)

    public var asType0: T0? {
        guard case .type0(let value) = self else {
            return nil
        }
        return value
    }
    public var asType1: T1? {
        guard case .type1(let value) = self else {
            return nil
        }
        return value
    }
    public var asType2: T2? {
        guard case .type2(let value) = self else {
            return nil
        }
        return value
    }
    public var asType3: T3? {
        guard case .type3(let value) = self else {
            return nil
        }
        return value
    }
    public var asType4: T4? {
        guard case .type4(let value) = self else {
            return nil
        }
        return value
    }
    public var asType5: T5? {
        guard case .type5(let value) = self else {
            return nil
        }
        return value
    }
    public var asType6: T6? {
        guard case .type6(let value) = self else {
            return nil
        }
        return value
    }
    public var asType7: T7? {
        guard case .type7(let value) = self else {
            return nil
        }
        return value
    }
    public var asType8: T8? {
        guard case .type8(let value) = self else {
            return nil
        }
        return value
    }
    public var asType9: T9? {
        guard case .type9(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union10: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable {
    public func encode(to encoder: Encoder) throws {
        var typeContainer = encoder.container(keyedBy: UnionTypeCodingKeys.self)

        switch self {
        case .type0(let value):
            try typeContainer.encode(T0.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type1(let value):
            try typeContainer.encode(T1.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type2(let value):
            try typeContainer.encode(T2.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type3(let value):
            try typeContainer.encode(T3.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type4(let value):
            try typeContainer.encode(T4.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type5(let value):
            try typeContainer.encode(T5.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type6(let value):
            try typeContainer.encode(T6.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type7(let value):
            try typeContainer.encode(T7.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type8(let value):
            try typeContainer.encode(T8.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type9(let value):
            try typeContainer.encode(T9.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union10: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        switch typeValue {
        case T0.typeValue:
            self = .type0(try T0(from: decoder))
        case T1.typeValue:
            self = .type1(try T1(from: decoder))
        case T2.typeValue:
            self = .type2(try T2(from: decoder))
        case T3.typeValue:
            self = .type3(try T3(from: decoder))
        case T4.typeValue:
            self = .type4(try T4(from: decoder))
        case T5.typeValue:
            self = .type5(try T5(from: decoder))
        case T6.typeValue:
            self = .type6(try T6(from: decoder))
        case T7.typeValue:
            self = .type7(try T7(from: decoder))
        case T8.typeValue:
            self = .type8(try T8(from: decoder))
        case T9.typeValue:
            self = .type9(try T9(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union10: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable {}
extension Union10: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable {}

