import XCTest

@testable import ATProtoCore

final class LexiconDefinitionIDTests: XCTestCase {
    func testInitWithString() throws {
        let id1 = try LexiconDefinitionID(string: "com.example.foo#bar")
        XCTAssertEqual(id1.nsid, try NSID(string: "com.example.foo"))
        XCTAssertEqual(id1.fragment, "bar")
        XCTAssertEqual(id1.isMain, false)
        XCTAssertEqual(id1.toString(), "com.example.foo#bar")

        let id2 = try LexiconDefinitionID(string: "com.example.foo")
        XCTAssertEqual(id2.nsid, try NSID(string: "com.example.foo"))
        XCTAssertEqual(id2.fragment, nil)
        XCTAssertEqual(id2.isMain, true)
        XCTAssertEqual(id2.toString(), "com.example.foo#main")

        let id3 = try LexiconDefinitionID(string: "com.example.foo#main")
        XCTAssertEqual(id3.nsid, try NSID(string: "com.example.foo"))
        XCTAssertEqual(id3.fragment, nil)
        XCTAssertEqual(id3.isMain, true)
        XCTAssertEqual(id3.toString(), "com.example.foo#main")

        XCTAssertNotEqual(id1, id2)
        XCTAssertEqual(id2, id3)
    }
}
