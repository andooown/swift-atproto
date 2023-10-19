public struct LexiconDefinitionID: Hashable {
    public var nsid: NSID
    public var fragment: String?

    public init(nsid: NSID, fragment: String?) {
        self.nsid = nsid
        self.fragment = fragment == "main" ? nil : fragment
    }

    public init(string: String) throws {
        let parts = string.split(separator: "#").map(String.init)

        switch parts.count {
        case 1:
            self.init(
                nsid: try NSID(string: parts[0]),
                fragment: nil
            )

        case 2:
            self.init(
                nsid: try NSID(string: parts[0]),
                fragment: parts[1]
            )

        default:
            throw InvalidLexiconDefinitionIDError.invalidPartsCount
        }
    }

    public var isMain: Bool {
        fragment == nil
    }

    public func toString(fullStyle: Bool = true) -> String {
        if let fragment = fragment {
            return nsid.toString() + "#" + fragment
        } else {
            return nsid.toString() + (fullStyle ? "#main" : "")
        }
    }
}

private extension LexiconDefinitionID {
    enum InvalidLexiconDefinitionIDError: Error {
        case invalidPartsCount
    }
}
