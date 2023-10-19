import XCTest

@testable import ATProtoCore

final class NSIDTests: XCTestCase {
    func testInitWithString() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L11-L22

        let value1 = try NSID(string: "com.example.foo")
        XCTAssertEqual(value1.authority, "example.com")
        XCTAssertEqual(value1.name, "foo")
        XCTAssertEqual(value1.toString(), "com.example.foo")

        let value2 = try NSID(string: "com.long-thing1.cool.fooBarBaz")
        XCTAssertEqual(value2.authority, "cool.long-thing1.com")
        XCTAssertEqual(value2.name, "fooBarBaz")
        XCTAssertEqual(value2.toString(), "com.long-thing1.cool.fooBarBaz")
    }

    func testInitWithAuthorityAndName() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L24-L38

        let value1 = try NSID(authority: "example.com", name: "foo")
        XCTAssertEqual(value1.authority, "example.com")
        XCTAssertEqual(value1.name, "foo")
        XCTAssertEqual(value1.toString(), "com.example.foo")

        let value2 = try NSID(authority: "cool.long-thing1.com", name: "fooBarBaz")
        XCTAssertEqual(value2.authority, "cool.long-thing1.com")
        XCTAssertEqual(value2.name, "fooBarBaz")
        XCTAssertEqual(value2.toString(), "com.long-thing1.cool.fooBarBaz")
    }

    // enforces spec details
    func testEnsureValid_EnforcesSpecDetails() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L50-L112

        XCTAssertNoThrow(try NSID.ensureValid(string: "com.example.foo"))

        let longNSID = "com." + String(repeating: "o", count: 63) + ".foo"
        XCTAssertNoThrow(try NSID.ensureValid(string: longNSID))

        let tooLongNSID = "com." + String(repeating: "o", count: 64) + ".foo"
        XCTAssertThrowsError(try NSID.ensureValid(string: tooLongNSID))

        let longEnd = "com.example." + String(repeating: "o", count: 63)
        XCTAssertNoThrow(try NSID.ensureValid(string: longEnd))

        let tooLongEnd = "com.example." + String(repeating: "o", count: 64)
        XCTAssertThrowsError(try NSID.ensureValid(string: tooLongEnd))

        let longOverall = "com." + String(repeating: "middle.", count: 40) + "foo"
        XCTAssertEqual(longOverall.count, 287)
        XCTAssertNoThrow(try NSID.ensureValid(string: longOverall))

        let tooLongOverall = "com." + String(repeating: "middle.", count: 50) + "foo"
        XCTAssertEqual(tooLongOverall.count, 357)
        XCTAssertThrowsError(try NSID.ensureValid(string: tooLongOverall))

        XCTAssertNoThrow(try NSID.ensureValid(string: "com.example.fooBar"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "net.users.bob.ping"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "a.b.c"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "m.xn--masekowski-d0b.pl"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "one.two.three"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "one.two.three.four-and.FiVe"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "one.2.three"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "a-0.b-1.c"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "a0.b1.cc"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "cn.8.lex.stuff"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "test.12345.record"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "a01.thing.record"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "a.0.c"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "xn--fiqs8s.xn--fiqa61au8b7zsevnm8ak20mc4a87e.record.two"))

        XCTAssertThrowsError(try NSID.ensureValid(string: "com.example.foo.*"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.example.foo.blah*"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.example.foo.*blah"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.example.f00"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.exa💩ple.thing"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "a-0.b-1.c-3"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "a-0.b-1.c-o"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "a0.b1.c3"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "1.0.0.127.record"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "0two.example.foo"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "example.com"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.example"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "a."))
        XCTAssertThrowsError(try NSID.ensureValid(string: ".one.two.three"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "one.two.three "))
        XCTAssertThrowsError(try NSID.ensureValid(string: "one.two..three"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "one .two.three"))
        XCTAssertThrowsError(try NSID.ensureValid(string: " one.two.three"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.exa💩ple.thing"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.atproto.feed.p@st"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.atproto.feed.p_st"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.atproto.feed.p*st"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.atproto.feed.po#t"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.atproto.feed.p!ot"))
        XCTAssertThrowsError(try NSID.ensureValid(string: "com.example-.foo"))
    }

    // allows onion (Tor) NSIDs
    func testEnsureValid_AllowsOnionNSIDs() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L114-L119

        XCTAssertNoThrow(try NSID.ensureValid(string: "onion.expyuzz4wqqyqhjn.spec.getThing"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "onion.g2zyxa5ihm7nsggfxnu52rck2vv4rvmdlkiu3zzui5du4xyclen53wid.lex.deleteThing"))
    }

    // allows starting-with-numeric segments (same as domains)
    func testEnsureValid_AllowsStartingWithNumericSegments() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L121-L127

        XCTAssertNoThrow(try NSID.ensureValid(string: "org.4chan.lex.getThing"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "cn.8.lex.stuff"))
        XCTAssertNoThrow(try NSID.ensureValid(string: "onion.2gzyxa5ihm7nsggfxnu52rck2vv4rvmdlkiu3zzui5du4xyclen53wid.lex.deleteThing"))
    }

    // conforms to interop valid NSIDs
    func testEnsureValid_ConformsToInteropValidNSIDs() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L129-L142

        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/interop-test-files/syntax/nsid_syntax_valid.txt
        let strings = [
            // length checks
            "com.ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo.foo",
            "com.example.ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
            "com.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.foo",
            // valid examples
            "com.example.fooBar",
            "net.users.bob.ping",
            "a.b.c",
            "m.xn--masekowski-d0b.pl",
            "one.two.three",
            "one.two.three.four-and.FiVe",
            "one.2.three",
            "a-0.b-1.c",
            "a0.b1.cc",
            "cn.8.lex.stuff",
            "test.12345.record",
            "a01.thing.record",
            "a.0.c",
            "xn--fiqs8s.xn--fiqa61au8b7zsevnm8ak20mc4a87e.record.two",
            // allows onion (Tor) NSIDs
            "onion.expyuzz4wqqyqhjn.spec.getThing",
            "onion.g2zyxa5ihm7nsggfxnu52rck2vv4rvmdlkiu3zzui5du4xyclen53wid.lex.deleteThing",
            // allows starting-with-numeric segments (same as domains)
            "org.4chan.lex.getThing",
            "cn.8.lex.stuff",
            "onion.2gzyxa5ihm7nsggfxnu52rck2vv4rvmdlkiu3zzui5du4xyclen53wid.lex.deleteThing",
        ]

        for string in strings {
            XCTAssertNoThrow(try NSID.ensureValid(string: string), string)
        }
    }

    // conforms to interop invalid NSIDs
    func testEnsureValid_ConformsToInteropInvalidNSIDs() throws {
        // https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/tests/nsid.test.ts#L144-L158

        // https://github.com/bluesky-social/atproto/blob/main/interop-test-files/syntax/nsid_syntax_invalid.txt
        let strings = [
            // length checks
            "com.oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo.foo",
            "com.example.oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo",
            "com.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.middle.foo",
            // invliad examples
            "com.example.foo.*",
            "com.example.foo.blah*",
            "com.example.foo.*blah",
            "com.example.f00",
            "com.exa💩ple.thing",
            "a-0.b-1.c-3",
            "a-0.b-1.c-o",
            "a0.b1.c3",
            "1.0.0.127.record",
            "0two.example.foo",
            "example.com",
            "com.example",
            "a.",
            ".one.two.three",
            "one.two.three ",
            "one.two..three",
            "one .two.three",
            " one.two.three",
            "com.exa💩ple.thing",
            "com.atproto.feed.p@st",
            "com.atproto.feed.p_st",
            "com.atproto.feed.p*st",
            "com.atproto.feed.po#t",
            "com.atproto.feed.p!ot",
            "com.example-.foo",
        ]

        for string in strings {
            XCTAssertThrowsError(try NSID.ensureValid(string: string), string)
        }
    }

    func testEncoding() throws {
        let nsid = try NSID(string: "com.example.foo")

        let encoder = JSONEncoder()
        XCTAssertEqual(
            String(data: try encoder.encode(nsid), encoding: .utf8),
            #""com.example.foo""#
        )
    }

    func testDecoding() throws {
        let nsid = try NSID(string: "com.example.foo")

        let decoder = JSONDecoder()
        XCTAssertEqual(
            try decoder.decode(NSID.self, from: #""com.example.foo""#.data(using: .utf8)!),
            nsid
        )
    }
}
