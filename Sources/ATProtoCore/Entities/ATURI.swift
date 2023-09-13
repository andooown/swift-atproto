import Foundation
import RegexBuilder

// https://github.com/bluesky-social/atproto/blob/0533fab68ea32df4e00948ddfc2422c6f900223a/packages/syntax/src/aturi.ts

public struct ATURI {
    public var host: String
    public var path: String?
    public var query: String?
    public var hash: String?

    public init?(string: String) {
        guard let match = try? Self.atURIRegex.wholeMatch(in: string) else {
            return nil
        }

        self.host = String(match[Self.hostRef])
        self.path = match[Self.pathRef].map(String.init)
        self.query = match[Self.queryRef].map(String.init)
        self.hash = match[Self.hashRef].map(String.init)
    }
}

private extension ATURI {
    static let hostRef = Reference(Substring.self)
    static let pathRef = Reference(Substring?.self)
    static let queryRef = Reference(Substring?.self)
    static let hashRef = Reference(Substring?.self)

    static let atURIRegex = Regex {
        Optionally {
            Capture {
                "at://"
            }
        }
        // Host
        Capture(as: hostRef) {
            ChoiceOf {
                Regex {
                    "did:"
                    OneOrMore {
                        CharacterClass(
                            .anyOf(":%-"),
                            ("a"..."z"),
                            ("0"..."9")
                        )
                    }
                }
                Regex {
                    CharacterClass(
                        ("a"..."z"),
                        ("0"..."9")
                    )
                    ZeroOrMore {
                        CharacterClass(
                            .anyOf(".:-"),
                            ("a"..."z"),
                            ("0"..."9")
                        )
                    }
                }
            }
        }
        // Path
        Optionally {
            Capture(as: pathRef) {
                Regex {
                    "/"
                    ZeroOrMore {
                        CharacterClass(
                            .anyOf("?#"),
                            .whitespace
                        )
                        .inverted
                    }
                }
            } transform: { $0 }
        }
        // Query
        Optionally {
            "?"
            Capture(as: queryRef) {
                Regex {
                    OneOrMore {
                        CharacterClass(
                            .anyOf("#"),
                            .whitespace
                        )
                        .inverted
                    }
                }
            } transform: { $0 }
        }
        // Hash
        Optionally {
            Capture(as: hashRef) {
                Regex {
                    "#"
                    OneOrMore(.whitespace.inverted)
                }
            } transform: { $0 }
        }
    }
    .ignoresCase()
}
