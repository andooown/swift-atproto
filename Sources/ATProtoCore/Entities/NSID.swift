import RegexBuilder

// https://github.com/bluesky-social/atproto/blob/44ea5e80fa6f8a8724ff29a06f7fa8fc5d7f57ef/packages/syntax/src/nsid.ts

public struct NSID: Hashable {
    public var segments: [String]

    public init(string: String) throws {
        try NSID.ensureValid(string: string)

        self.segments = string.split(separator: ".", omittingEmptySubsequences: false).map(String.init)
    }

    public init(authority: String, name: String) throws {
        let segments = authority.split(separator: ".", omittingEmptySubsequences: false).reversed().map(String.init)
        try self.init(string: (segments + [name]).joined(separator: "."))
    }

    public var authority: String {
        segments.dropLast().reversed().joined(separator: ".")
    }

    public var name: String {
        segments.last!
    }

    public func toString() -> String {
        segments.joined(separator: ".")
    }
}

extension NSID {
    public static func ensureValid(string: String) throws {
        guard (try? Self.validCharactersRegex.wholeMatch(in: string)) != nil else {
            throw InvalidNsidError.invalidCharacters
        }

        guard string.count <= 253 + 1 + 63 else {
            throw InvalidNsidError.tooLong
        }

        let labels = string.split(separator: ".", omittingEmptySubsequences: false)
        guard labels.count >= 3 else {
            throw InvalidNsidError.tooFewParts
        }

        for (i, label) in labels.enumerated() {
            guard !label.isEmpty else {
                throw InvalidNsidError.emptyPart
            }

            guard label.count <= 63 else {
                throw InvalidNsidError.partTooLong
            }

            guard !label.hasPrefix("-") && !label.hasSuffix("-") else {
                throw InvalidNsidError.startOrEndWithHyphen
            }

            guard label.first!.isNumber == false || i != 0 else {
                throw InvalidNsidError.firstPartStartsWithDigit
            }

            guard (try? Self.alphaCharactersRegex.wholeMatch(in: label)) != nil || i != labels.count - 1 else {
                throw InvalidNsidError.namePartOnlyLetters
            }
        }
    }

    private enum InvalidNsidError: Error {
        case invalidCharacters
        case tooLong
        case tooFewParts
        case emptyPart
        case partTooLong
        case startOrEndWithHyphen
        case firstPartStartsWithDigit
        case namePartOnlyLetters
    }

    private static let validCharactersRegex = Regex {
        ZeroOrMore {
            CharacterClass(
                ("a"..."z"),
                ("A"..."Z"),
                ("0"..."9"),
                .anyOf(".-")
            )
        }
    }
    private static let alphaCharactersRegex = Regex {
        OneOrMore {
            CharacterClass(
                ("a"..."z"),
                ("A"..."Z")
            )
        }
    }
}

extension NSID: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.toString())
    }
}

extension NSID: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)

        do {
            self = try NSID(string: string)
        } catch {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Invalid NSID string: \(string). Got error: \(error)"
            )
        }
    }
}
