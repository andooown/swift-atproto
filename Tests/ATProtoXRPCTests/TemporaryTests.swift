import Foundation
import XCTest

final class TemporaryTests: XCTestCase {
    func testExample() throws {
        let data = #""at://did:plc:z72i7hdynmk6r22z27h6tvur/app.bsky.feed.generator/whats-hot""#.data(using: .utf8)!
        XCTAssertNoThrow(try JSONDecoder().decode(URL.self, from: data))
    }
}
