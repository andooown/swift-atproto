import XCTest

@testable import ATProtoAPI

final class DummyTests: XCTestCase {
    // Dummy test case to detect fatalError on generated code
    func testDummy() {
        XCTAssertEqual("\(type(of: App.self))", "")
    }
}
