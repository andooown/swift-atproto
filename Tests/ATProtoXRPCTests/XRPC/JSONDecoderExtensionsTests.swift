import Foundation
import XCTest

@testable import ATProtoXRPC

final class JSONDecoderExtensionsTests: XCTestCase {
    func testDateDecode() throws {
        let validCases = [
            // preferred
            "1985-04-12T23:20:50.123Z",
            "1985-04-12T23:20:50.123456Z",
            "1985-04-12T23:20:50.120Z",
            "1985-04-12T23:20:50.120000Z",
            // supported
            "1985-04-12T23:20:50.1235678912345Z",
            "1985-04-12T23:20:50.100Z",
            "1985-04-12T23:20:50Z",
            "1985-04-12T23:20:50.0Z",
            "1985-04-12T23:20:50.123+00:00",
            "1985-04-12T23:20:50.123-07:00",
        ]
        for c in validCases {
            let data = ("\"" + c + "\"").data(using: .utf8)!
            XCTAssertNoThrow(try JSONDecoder.forXRPC.decode(Date.self, from: data))
        }
    }
}
