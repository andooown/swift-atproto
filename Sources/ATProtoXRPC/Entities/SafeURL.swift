import Foundation

public struct SafeURL: Codable, Hashable {
    public let rawValue: String
    public let url: URL?

    public init(string: String) {
        self.rawValue = string
        self.url = URL(string: string)
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let rawValue = try container.decode(String.self)
        self.rawValue = rawValue

        self.url = URL(string: rawValue)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }
}
