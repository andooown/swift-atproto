public typealias UnionCodable = UnionEncodable & UnionDecodable

public protocol UnionEncodable: Encodable {
    static var typeValue: String { get }
}

public protocol UnionDecodable: Decodable {
    static var typeValue: String { get }
}
