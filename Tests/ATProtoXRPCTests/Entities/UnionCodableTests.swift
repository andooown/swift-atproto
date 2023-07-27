import XCTest

@testable import ATProtoXRPC

final class UnionCodableTests: XCTestCase {
    struct TestStructA: UnionCodable {
        static var typeValue = "com.example.testStructA"

        let val: Int
    }

    struct TestStructB: UnionCodable {
        static var typeValue = "com.example.testStructB"

        let val: String
    }

    typealias Union = Union2<TestStructA, TestStructB>

    func testEncode() throws {
        let encoder = JSONEncoder()

        XCTAssertEqual(
            String(data: try encoder.encode(Union.type0(.init(val: 0))), encoding: .utf8),
            #"{"$type":"com.example.testStructA","val":0}"#
        )

        XCTAssertEqual(
            String(data: try encoder.encode(Union.type1(.init(val: "VALUE"))), encoding: .utf8),
            #"{"$type":"com.example.testStructB","val":"VALUE"}"#
        )
    }
}
