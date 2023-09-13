import Foundation
import OrderedCollections
import RegexBuilder

// https://github.com/bluesky-social/atproto/blob/0533fab68ea32df4e00948ddfc2422c6f900223a/packages/syntax/src/aturi.ts

public struct ATURI: Hashable {
    public var host: String
    public var path: String?
    public var query: OrderedDictionary<String, String?>
    public var hash: String?

    // TODO: Support relative URIs
    public init?(string: String) {
        guard let match = try? Self.atURIRegex.wholeMatch(in: string) else {
            return nil
        }

        self.host = String(match[Self.hostRef])
        self.path = match[Self.pathRef].map(String.init)

        let queryStr = match[Self.queryRef].map(String.init)
        var query = OrderedDictionary<String, String?>()
        for pair in queryStr?.split(separator: "&") ?? [] {
            let parts = pair.split(separator: "=")
            if parts.count == 1 {
                query[String(parts[0])] = nil
            } else {
                query[String(parts[0])] = String(parts[1])
            }
        }
        self.query = query

        self.hash = match[Self.hashRef].map(String.init)
    }

    public var collection: String? {
        self.path?.split(separator: "/").filter { !$0.isEmpty }.first.map(String.init)
    }

    public var rkey: String? {
        self.path?.split(separator: "/").filter { !$0.isEmpty }.dropFirst().first.map(String.init)
    }

    public func toString() -> String {
        var path = self.path ?? "/"
        if !path.hasPrefix("/") {
            path = "/\(path)"
        }

        var qs = self.query.map { $0.key + ($0.value.map { "=\($0)" } ?? "") }.joined(separator: "&")
        if !qs.isEmpty && !qs.hasPrefix("?")  {
            qs = "?\(qs)"
        }

        var hash = self.hash ?? ""
        if !hash.isEmpty && !hash.hasPrefix("#")   {
            hash = "#\(hash)"
        }

        return "at://\(self.host)\(path)\(qs)\(hash)"
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
