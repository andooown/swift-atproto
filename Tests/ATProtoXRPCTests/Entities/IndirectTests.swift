import XCTest

@testable import ATProtoXRPC

final class IndirectTests: XCTestCase {
    func testDecoding() throws {
        let decoder = JSONDecoder()

        XCTAssertEqual(
            try decoder.decode(String.self, from: #""TEXT""#.data(using: .utf8)!),
            "TEXT"
        )
        XCTAssertEqual(
            try decoder.decode(Indirect<String>.self, from: #""TEXT""#.data(using: .utf8)!),
            .wrapped("TEXT")
        )
        XCTAssertEqual(
            try decoder.decode(URL.self, from: #""https://example.com/""#.data(using: .utf8)!),
            URL(string: "https://example.com/")!
        )
        XCTAssertEqual(
            try decoder.decode(
                Indirect<URL>.self,
                from: #""https://example.com/""#.data(using: .utf8)!
            ),
            .wrapped(URL(string: "https://example.com/")!)
        )
        XCTAssertEqual(
            try decoder.decode(
                Indirect<URL?>.self,
                from: #""https://example.com/""#.data(using: .utf8)!
            ),
            .wrapped(URL(string: "https://example.com/")!)
        )
    }
}
