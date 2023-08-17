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

        let dataA = try encoder.encode(Union.type0(.init(val: 0)))
        let jsonA = try XCTUnwrap(JSONSerialization.jsonObject(with: dataA) as? [String: Any])
        XCTAssertEqual(jsonA.count, 2)
        XCTAssertEqual(jsonA["$type"] as? String, "com.example.testStructA")
        XCTAssertEqual(jsonA["val"] as? Int, 0)

        let dataB = try encoder.encode(Union.type1(.init(val: "VALUE")))
        let jsonB = try XCTUnwrap(JSONSerialization.jsonObject(with: dataB) as? [String: Any])
        XCTAssertEqual(jsonB.count, 2)
        XCTAssertEqual(jsonB["$type"] as? String, "com.example.testStructB")
        XCTAssertEqual(jsonB["val"] as? String, "VALUE")
    }
}
