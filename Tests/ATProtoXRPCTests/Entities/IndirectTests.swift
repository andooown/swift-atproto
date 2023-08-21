import XCTest

@testable import ATProtoXRPC

final class IndirectTests: XCTestCase {
    func testEncoding() throws {
        let encoder = JSONEncoder()

        XCTAssertEqual(
            String(data: try encoder.encode(Indirect<String>.wrapped("TEXT")), encoding: .utf8),
            #""TEXT""#
        )
        XCTAssertEqual(
            String(data: try encoder.encode(Indirect<URL>.wrapped(URL(string: "https://example.com/")!)), encoding: .utf8),
            #""https:\/\/example.com\/""#
        )

        XCTAssertEqual(
            String(data: try encoder.encode(Object(value: 0)), encoding: .utf8),
            #"{"value":0}"#
        )
        XCTAssertEqual(
            String(data: try encoder.encode(Object(value: nil)), encoding: .utf8),
            #"{}"#
        )
    }

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

private extension IndirectTests {
    struct Object: Encodable {
        @Indirect
        var value: Int?

        init(value: Int?) {
            self._value = .wrapped(value)
        }
    }
}
