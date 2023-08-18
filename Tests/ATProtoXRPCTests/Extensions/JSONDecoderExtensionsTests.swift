import Foundation
import XCTest

@testable import ATProtoXRPC

final class JSONDecoderExtensionsTests: XCTestCase {
    func testDateDecode() throws {
        // https://atproto.com/specs/lexicon#datetime

        let cases = [
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

            // Possible cases that was in actual response from bsky.social
            "2023-08-18T06:45:26.132861",
        ]
        for c in cases {
            let data = ("\"" + c + "\"").data(using: .utf8)!
            XCTAssertNoThrow(try JSONDecoder.forXRPC.decode(Date.self, from: data))
        }
    }
}
