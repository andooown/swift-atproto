import Foundation

// https://github.com/bluesky-social/atproto/blob/0533fab68ea32df4e00948ddfc2422c6f900223a/packages/syntax/src/aturi.ts

public struct ATURI {
    public var host: String
    public var path: String?
    public var query: String?
    public var hash: String?

    public init?(string: String) {
        nil
    }
}
