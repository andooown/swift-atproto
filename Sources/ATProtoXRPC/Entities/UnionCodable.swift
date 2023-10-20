import ATProtoCore

public typealias UnionCodable = UnionEncodable & UnionDecodable

public protocol UnionEncodable: Encodable {
    static var typeValue: LexiconDefinitionID { get }
}

public protocol UnionDecodable: Decodable {
    static var typeValue: LexiconDefinitionID { get }
}
