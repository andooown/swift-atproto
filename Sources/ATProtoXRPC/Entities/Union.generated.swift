

import ATProtoCore
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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


// Union11

public enum Union11<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> {

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
    case type10(T10)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union11: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union11: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union11: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable {}
extension Union11: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable {}


// Union12

public enum Union12<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> {

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
    case type10(T10)
    case type11(T11)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union12: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union12: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union12: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable {}
extension Union12: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable {}


// Union13

public enum Union13<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union13: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union13: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union13: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable {}
extension Union13: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable {}


// Union14

public enum Union14<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union14: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union14: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union14: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable {}
extension Union14: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable {}


// Union15

public enum Union15<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)
    case type14(T14)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }
    public var asType14: T14? {
        guard case .type14(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union15: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable, T14: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type14(let value):
            try typeContainer.encode(T14.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union15: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable, T14: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        case T14.typeValue:
            self = .type14(try T14(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union15: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable, T14: Equatable {}
extension Union15: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable, T14: Hashable {}


// Union16

public enum Union16<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)
    case type14(T14)
    case type15(T15)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }
    public var asType14: T14? {
        guard case .type14(let value) = self else {
            return nil
        }
        return value
    }
    public var asType15: T15? {
        guard case .type15(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union16: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable, T14: UnionEncodable, T15: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type14(let value):
            try typeContainer.encode(T14.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type15(let value):
            try typeContainer.encode(T15.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union16: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable, T14: UnionDecodable, T15: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        case T14.typeValue:
            self = .type14(try T14(from: decoder))
        case T15.typeValue:
            self = .type15(try T15(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union16: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable, T14: Equatable, T15: Equatable {}
extension Union16: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable, T14: Hashable, T15: Hashable {}


// Union17

public enum Union17<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)
    case type14(T14)
    case type15(T15)
    case type16(T16)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }
    public var asType14: T14? {
        guard case .type14(let value) = self else {
            return nil
        }
        return value
    }
    public var asType15: T15? {
        guard case .type15(let value) = self else {
            return nil
        }
        return value
    }
    public var asType16: T16? {
        guard case .type16(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union17: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable, T14: UnionEncodable, T15: UnionEncodable, T16: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type14(let value):
            try typeContainer.encode(T14.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type15(let value):
            try typeContainer.encode(T15.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type16(let value):
            try typeContainer.encode(T16.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union17: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable, T14: UnionDecodable, T15: UnionDecodable, T16: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        case T14.typeValue:
            self = .type14(try T14(from: decoder))
        case T15.typeValue:
            self = .type15(try T15(from: decoder))
        case T16.typeValue:
            self = .type16(try T16(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union17: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable, T14: Equatable, T15: Equatable, T16: Equatable {}
extension Union17: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable, T14: Hashable, T15: Hashable, T16: Hashable {}


// Union18

public enum Union18<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)
    case type14(T14)
    case type15(T15)
    case type16(T16)
    case type17(T17)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }
    public var asType14: T14? {
        guard case .type14(let value) = self else {
            return nil
        }
        return value
    }
    public var asType15: T15? {
        guard case .type15(let value) = self else {
            return nil
        }
        return value
    }
    public var asType16: T16? {
        guard case .type16(let value) = self else {
            return nil
        }
        return value
    }
    public var asType17: T17? {
        guard case .type17(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union18: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable, T14: UnionEncodable, T15: UnionEncodable, T16: UnionEncodable, T17: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type14(let value):
            try typeContainer.encode(T14.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type15(let value):
            try typeContainer.encode(T15.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type16(let value):
            try typeContainer.encode(T16.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type17(let value):
            try typeContainer.encode(T17.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union18: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable, T14: UnionDecodable, T15: UnionDecodable, T16: UnionDecodable, T17: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        case T14.typeValue:
            self = .type14(try T14(from: decoder))
        case T15.typeValue:
            self = .type15(try T15(from: decoder))
        case T16.typeValue:
            self = .type16(try T16(from: decoder))
        case T17.typeValue:
            self = .type17(try T17(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union18: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable, T14: Equatable, T15: Equatable, T16: Equatable, T17: Equatable {}
extension Union18: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable, T14: Hashable, T15: Hashable, T16: Hashable, T17: Hashable {}


// Union19

public enum Union19<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)
    case type14(T14)
    case type15(T15)
    case type16(T16)
    case type17(T17)
    case type18(T18)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }
    public var asType14: T14? {
        guard case .type14(let value) = self else {
            return nil
        }
        return value
    }
    public var asType15: T15? {
        guard case .type15(let value) = self else {
            return nil
        }
        return value
    }
    public var asType16: T16? {
        guard case .type16(let value) = self else {
            return nil
        }
        return value
    }
    public var asType17: T17? {
        guard case .type17(let value) = self else {
            return nil
        }
        return value
    }
    public var asType18: T18? {
        guard case .type18(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union19: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable, T14: UnionEncodable, T15: UnionEncodable, T16: UnionEncodable, T17: UnionEncodable, T18: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type14(let value):
            try typeContainer.encode(T14.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type15(let value):
            try typeContainer.encode(T15.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type16(let value):
            try typeContainer.encode(T16.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type17(let value):
            try typeContainer.encode(T17.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type18(let value):
            try typeContainer.encode(T18.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union19: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable, T14: UnionDecodable, T15: UnionDecodable, T16: UnionDecodable, T17: UnionDecodable, T18: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        case T14.typeValue:
            self = .type14(try T14(from: decoder))
        case T15.typeValue:
            self = .type15(try T15(from: decoder))
        case T16.typeValue:
            self = .type16(try T16(from: decoder))
        case T17.typeValue:
            self = .type17(try T17(from: decoder))
        case T18.typeValue:
            self = .type18(try T18(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union19: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable, T14: Equatable, T15: Equatable, T16: Equatable, T17: Equatable, T18: Equatable {}
extension Union19: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable, T14: Hashable, T15: Hashable, T16: Hashable, T17: Hashable, T18: Hashable {}


// Union20

public enum Union20<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> {

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
    case type10(T10)
    case type11(T11)
    case type12(T12)
    case type13(T13)
    case type14(T14)
    case type15(T15)
    case type16(T16)
    case type17(T17)
    case type18(T18)
    case type19(T19)

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
    public var asType10: T10? {
        guard case .type10(let value) = self else {
            return nil
        }
        return value
    }
    public var asType11: T11? {
        guard case .type11(let value) = self else {
            return nil
        }
        return value
    }
    public var asType12: T12? {
        guard case .type12(let value) = self else {
            return nil
        }
        return value
    }
    public var asType13: T13? {
        guard case .type13(let value) = self else {
            return nil
        }
        return value
    }
    public var asType14: T14? {
        guard case .type14(let value) = self else {
            return nil
        }
        return value
    }
    public var asType15: T15? {
        guard case .type15(let value) = self else {
            return nil
        }
        return value
    }
    public var asType16: T16? {
        guard case .type16(let value) = self else {
            return nil
        }
        return value
    }
    public var asType17: T17? {
        guard case .type17(let value) = self else {
            return nil
        }
        return value
    }
    public var asType18: T18? {
        guard case .type18(let value) = self else {
            return nil
        }
        return value
    }
    public var asType19: T19? {
        guard case .type19(let value) = self else {
            return nil
        }
        return value
    }

}

extension Union20: Encodable where T0: UnionEncodable, T1: UnionEncodable, T2: UnionEncodable, T3: UnionEncodable, T4: UnionEncodable, T5: UnionEncodable, T6: UnionEncodable, T7: UnionEncodable, T8: UnionEncodable, T9: UnionEncodable, T10: UnionEncodable, T11: UnionEncodable, T12: UnionEncodable, T13: UnionEncodable, T14: UnionEncodable, T15: UnionEncodable, T16: UnionEncodable, T17: UnionEncodable, T18: UnionEncodable, T19: UnionEncodable {
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
        case .type10(let value):
            try typeContainer.encode(T10.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type11(let value):
            try typeContainer.encode(T11.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type12(let value):
            try typeContainer.encode(T12.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type13(let value):
            try typeContainer.encode(T13.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type14(let value):
            try typeContainer.encode(T14.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type15(let value):
            try typeContainer.encode(T15.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type16(let value):
            try typeContainer.encode(T16.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type17(let value):
            try typeContainer.encode(T17.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type18(let value):
            try typeContainer.encode(T18.typeValue, forKey: .type)
            try value.encode(to: encoder)
        case .type19(let value):
            try typeContainer.encode(T19.typeValue, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

extension Union20: Decodable where T0: UnionDecodable, T1: UnionDecodable, T2: UnionDecodable, T3: UnionDecodable, T4: UnionDecodable, T5: UnionDecodable, T6: UnionDecodable, T7: UnionDecodable, T8: UnionDecodable, T9: UnionDecodable, T10: UnionDecodable, T11: UnionDecodable, T12: UnionDecodable, T13: UnionDecodable, T14: UnionDecodable, T15: UnionDecodable, T16: UnionDecodable, T17: UnionDecodable, T18: UnionDecodable, T19: UnionDecodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UnionTypeCodingKeys.self)

        let typeValue = try container.decode(String.self, forKey: .type)
        let defID = try LexiconDefinitionID(string: typeValue)
        switch defID {
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
        case T10.typeValue:
            self = .type10(try T10(from: decoder))
        case T11.typeValue:
            self = .type11(try T11(from: decoder))
        case T12.typeValue:
            self = .type12(try T12(from: decoder))
        case T13.typeValue:
            self = .type13(try T13(from: decoder))
        case T14.typeValue:
            self = .type14(try T14(from: decoder))
        case T15.typeValue:
            self = .type15(try T15(from: decoder))
        case T16.typeValue:
            self = .type16(try T16(from: decoder))
        case T17.typeValue:
            self = .type17(try T17(from: decoder))
        case T18.typeValue:
            self = .type18(try T18(from: decoder))
        case T19.typeValue:
            self = .type19(try T19(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: decoder.codingPath, debugDescription: "unexpected $type value: \(typeValue)")
            )
        }
    }
}

extension Union20: Equatable where T0: Equatable, T1: Equatable, T2: Equatable, T3: Equatable, T4: Equatable, T5: Equatable, T6: Equatable, T7: Equatable, T8: Equatable, T9: Equatable, T10: Equatable, T11: Equatable, T12: Equatable, T13: Equatable, T14: Equatable, T15: Equatable, T16: Equatable, T17: Equatable, T18: Equatable, T19: Equatable {}
extension Union20: Hashable where T0: Hashable, T1: Hashable, T2: Hashable, T3: Hashable, T4: Hashable, T5: Hashable, T6: Hashable, T7: Hashable, T8: Hashable, T9: Hashable, T10: Hashable, T11: Hashable, T12: Hashable, T13: Hashable, T14: Hashable, T15: Hashable, T16: Hashable, T17: Hashable, T18: Hashable, T19: Hashable {}

