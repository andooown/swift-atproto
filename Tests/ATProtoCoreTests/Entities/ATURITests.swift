import OrderedCollections
import XCTest

@testable import ATProtoCore

final class ATURITests: XCTestCase {
    // https://github.com/bluesky-social/atproto/blob/0533fab68ea32df4e00948ddfc2422c6f900223a/packages/syntax/tests/aturi.test.ts#L4
    func testParsing() throws {
        let cases: [(String, String, String?, OrderedDictionary<String, String?>, String?, UInt)] = [
            ("foo.com", "foo.com", nil, [:], nil, #line),
            ("at://foo.com", "foo.com", nil, [:], nil, #line),
            ("at://foo.com/", "foo.com", "/", [:], nil, #line),
            ("at://foo.com/foo", "foo.com", "/foo", [:], nil, #line),
            ("at://foo.com/foo/", "foo.com", "/foo/", [:], nil, #line),
            ("at://foo.com/foo/bar", "foo.com", "/foo/bar", [:], nil, #line),
            ("at://foo.com?foo=bar", "foo.com", nil, ["foo": "bar"], nil, #line),
            ("at://foo.com?foo=bar&baz=buux", "foo.com", nil, ["foo": "bar", "baz": "buux"], nil, #line),
            ("at://foo.com/?foo=bar", "foo.com", "/", ["foo": "bar"], nil, #line),
            ("at://foo.com/foo?foo=bar", "foo.com", "/foo", ["foo": "bar"], nil, #line),
            ("at://foo.com/foo/?foo=bar", "foo.com", "/foo/", ["foo": "bar"], nil, #line),
            ("at://foo.com#hash", "foo.com", nil, [:], "#hash", #line),
            ("at://foo.com/#hash", "foo.com", "/", [:], "#hash", #line),
            ("at://foo.com/foo#hash", "foo.com", "/foo", [:], "#hash", #line),
            ("at://foo.com/foo/#hash", "foo.com", "/foo/", [:], "#hash", #line),
            ("at://foo.com?foo=bar#hash", "foo.com", nil, ["foo": "bar"], "#hash", #line),
            (
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                nil,
                [:],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                nil,
                [:],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/",
                [:],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo",
                [:],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo/",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo/",
                [:],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo/bar",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo/bar",
                [:],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw?foo=bar",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                nil,
                ["foo": "bar"],
                nil, 
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw?foo=bar&baz=buux",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                nil,
                ["foo": "bar", "baz": "buux"],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/?foo=bar",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/",
                ["foo": "bar"],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo?foo=bar",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo",
                ["foo": "bar"],
                nil,
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo/?foo=bar",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo/",
                ["foo": "bar"],
                nil, 
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw#hash",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                nil,
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/#hash",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/",
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo#hash",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo",
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw/foo/#hash",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                "/foo/",
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw?foo=bar#hash",
                "did:example:EiAnKD8-jfdd0MDcZUjAbRgaThBrMxPTFOxcnfJhI7Ukaw",
                nil,
                ["foo": "bar"],
                "#hash",
                #line
            ),

            ("did:web:localhost%3A1234", "did:web:localhost%3A1234", nil, [:], nil, #line),
            ("at://did:web:localhost%3A1234", "did:web:localhost%3A1234", nil, [:], nil, #line),
            (
                "at://did:web:localhost%3A1234/",
                "did:web:localhost%3A1234",
                "/",
                [:],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo",
                "did:web:localhost%3A1234",
                "/foo",
                [:],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo/",
                "did:web:localhost%3A1234",
                "/foo/",
                [:],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo/bar",
                "did:web:localhost%3A1234",
                "/foo/bar",
                [:],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234?foo=bar",
                "did:web:localhost%3A1234",
                nil,
                ["foo": "bar"],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234?foo=bar&baz=buux",
                "did:web:localhost%3A1234",
                nil,
                ["foo": "bar", "baz": "buux"],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234/?foo=bar",
                "did:web:localhost%3A1234",
                "/",
                ["foo": "bar"],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo?foo=bar",
                "did:web:localhost%3A1234",
                "/foo",
                ["foo": "bar"],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo/?foo=bar",
                "did:web:localhost%3A1234",
                "/foo/",
                ["foo": "bar"],
                nil,
                #line
            ),
            (
                "at://did:web:localhost%3A1234#hash",
                "did:web:localhost%3A1234",
                nil,
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:web:localhost%3A1234/#hash",
                "did:web:localhost%3A1234",
                "/",
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo#hash",
                "did:web:localhost%3A1234",
                "/foo",
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:web:localhost%3A1234/foo/#hash",
                "did:web:localhost%3A1234",
                "/foo/",
                [:],
                "#hash",
                #line
            ),
            (
                "at://did:web:localhost%3A1234?foo=bar#hash",
                "did:web:localhost%3A1234",
                nil,
                ["foo": "bar"],
                "#hash",
                #line
            ),
            (
                "at://4513echo.bsky.social/app.bsky.feed.post/3jsrpdyf6ss23",
                "4513echo.bsky.social",
                "/app.bsky.feed.post/3jsrpdyf6ss23",
                [:],
                nil,
                #line
            ),
        ]

        for (input, host, path, query, hash, line) in cases {
            let uri = try XCTUnwrap(ATURI(string: input), line: line)

            XCTAssertEqual(uri.host, host, line: line)
            XCTAssertEqual(uri.path, path, line: line)
            XCTAssertEqual(uri.query, query, line: line)
            XCTAssertEqual(uri.hash, hash, line: line)
        }
    }

    // https://github.com/bluesky-social/atproto/blob/0533fab68ea32df4e00948ddfc2422c6f900223a/packages/syntax/tests/aturi.test.ts#L258
    func testATProtoSpecificParsing() throws {
        let cases: [(String, String?, String?, UInt)] = [
            ("at://foo.com", nil, nil, #line),
            ("at://foo.com/com.example.foo", "com.example.foo", nil, #line),
            ("at://foo.com/com.example.foo/123", "com.example.foo", "123", #line),
        ]

        for (input, collection, rkey, line) in cases {
            let uri = try XCTUnwrap(ATURI(string: input), line: line)

            XCTAssertEqual(uri.collection, collection, line: line)
            XCTAssertEqual(uri.rkey, rkey, line: line)
        }
    }

    // https://github.com/bluesky-social/atproto/blob/0533fab68ea32df4e00948ddfc2422c6f900223a/packages/syntax/tests/aturi.test.ts#L276
    func testModification() throws {
        var uri = try XCTUnwrap(ATURI(string: "at://foo.com"))
        XCTAssertEqual(uri.toString(), "at://foo.com/")

        uri.host = "bar.com"
        XCTAssertEqual(uri.toString(), "at://bar.com/")
        uri.host = "did:web:localhost%3A1234"
        XCTAssertEqual(uri.toString(), "at://did:web:localhost%3A1234/")
        uri.host = "foo.com"

        uri.path = "/"
        XCTAssertEqual(uri.toString(), "at://foo.com/")
        uri.path = "/foo"
        XCTAssertEqual(uri.toString(), "at://foo.com/foo")
        uri.path = "foo"
        XCTAssertEqual(uri.toString(), "at://foo.com/foo")

        // TODO: Support modifying collection & rkey

        uri.query = ["foo": "bar"]
        XCTAssertEqual(uri.toString(), "at://foo.com/foo?foo=bar")
        uri.query["baz"] = "buux"
        XCTAssertEqual(uri.toString(), "at://foo.com/foo?foo=bar&baz=buux")

        uri.hash = "#hash"
        XCTAssertEqual(uri.toString(), "at://foo.com/foo?foo=bar&baz=buux#hash")
        uri.hash = "hash"
        XCTAssertEqual(uri.toString(), "at://foo.com/foo?foo=bar&baz=buux#hash")
    }
}
