
import Foundation
import ATProtoCore
import ATProtoXRPC
public enum App {
}
public extension App {
    enum Bsky {
    }
}
public extension App.Bsky {
    enum Actor {
    }
}
public extension App.Bsky.Actor {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Embed {
    }
}
public extension App.Bsky {
    enum Feed {
    }
}
public extension App.Bsky.Feed {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Graph {
    }
}
public extension App.Bsky.Graph {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Notification {
    }
}
public extension App.Bsky {
    enum Richtext {
    }
}
public extension App.Bsky {
    enum Unspecced {
    }
}
public enum Com {
}
public extension Com {
    enum Atproto {
    }
}
public extension Com.Atproto {
    enum Admin {
    }
}
public extension Com.Atproto.Admin {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Identity {
    }
}
public extension Com.Atproto {
    enum Label {
    }
}
public extension Com.Atproto.Label {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Moderation {
    }
}
public extension Com.Atproto.Moderation {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Repo {
    }
}
public extension Com.Atproto {
    enum Server {
    }
}
public extension Com.Atproto.Server {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Sync {
    }
}
public typealias LexiconUnknownUnion = Union11 < App.Bsky.Actor.Profile, App.Bsky.Feed.Generator, App.Bsky.Feed.Like, App.Bsky.Feed.Post, App.Bsky.Feed.Repost, App.Bsky.Feed.Threadgate, App.Bsky.Graph.Block, App.Bsky.Graph.Follow, App.Bsky.Graph.List, App.Bsky.Graph.Listblock, App.Bsky.Graph.Listitem > 
extension LexiconUnknownUnion {
    public var asProfile: App.Bsky.Actor.Profile? {
        asType0
    }
    public var asGenerator: App.Bsky.Feed.Generator? {
        asType1
    }
    public var asLike: App.Bsky.Feed.Like? {
        asType2
    }
    public var asPost: App.Bsky.Feed.Post? {
        asType3
    }
    public var asRepost: App.Bsky.Feed.Repost? {
        asType4
    }
    public var asThreadgate: App.Bsky.Feed.Threadgate? {
        asType5
    }
    public var asBlock: App.Bsky.Graph.Block? {
        asType6
    }
    public var asFollow: App.Bsky.Graph.Follow? {
        asType7
    }
    public var asList: App.Bsky.Graph.List? {
        asType8
    }
    public var asListblock: App.Bsky.Graph.Listblock? {
        asType9
    }
    public var asListitem: App.Bsky.Graph.Listitem? {
        asType10
    }
}
public extension App.Bsky.Actor.Defs {
    public struct AdultContentPref: UnionCodable, Hashable {
        @Indirect
        public var enabled: Bool
        public init(
            enabled: Bool
        ) {
            self._enabled = .wrapped(enabled)
        }
        public static let typeValue = "app.bsky.actor.defs#adultContentPref"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct ContentLabelPref: UnionCodable, Hashable {
        @Indirect
        public var label: String
        @Indirect
        public var visibility: String
        public init(
            label: String, 
            visibility: String
        ) {
            self._label = .wrapped(label)
            self._visibility = .wrapped(visibility)
        }
        public static let typeValue = "app.bsky.actor.defs#contentLabelPref"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct FeedViewPref: UnionCodable, Hashable {
        @Indirect
        public var feed: String
        @Indirect
        public var hideQuotePosts: Optional < Bool > 
        @Indirect
        public var hideReplies: Optional < Bool > 
        @Indirect
        public var hideRepliesByLikeCount: Optional < Int > 
        @Indirect
        public var hideRepliesByUnfollowed: Optional < Bool > 
        @Indirect
        public var hideReposts: Optional < Bool > 
        public init(
            feed: String, 
            hideQuotePosts: Optional < Bool > = nil, 
            hideReplies: Optional < Bool > = nil, 
            hideRepliesByLikeCount: Optional < Int > = nil, 
            hideRepliesByUnfollowed: Optional < Bool > = nil, 
            hideReposts: Optional < Bool > = nil
        ) {
            self._feed = .wrapped(feed)
            self._hideQuotePosts = .wrapped(hideQuotePosts)
            self._hideReplies = .wrapped(hideReplies)
            self._hideRepliesByLikeCount = .wrapped(hideRepliesByLikeCount)
            self._hideRepliesByUnfollowed = .wrapped(hideRepliesByUnfollowed)
            self._hideReposts = .wrapped(hideReposts)
        }
        public static let typeValue = "app.bsky.actor.defs#feedViewPref"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct PersonalDetailsPref: UnionCodable, Hashable {
        @Indirect
        public var birthDate: Optional < Date > 
        public init(
            birthDate: Optional < Date > = nil
        ) {
            self._birthDate = .wrapped(birthDate)
        }
        public static let typeValue = "app.bsky.actor.defs#personalDetailsPref"
    }
}
public extension App.Bsky.Actor.Defs {
    typealias Preferences = [Union6 < App.Bsky.Actor.Defs.AdultContentPref, App.Bsky.Actor.Defs.ContentLabelPref, App.Bsky.Actor.Defs.SavedFeedsPref, App.Bsky.Actor.Defs.PersonalDetailsPref, App.Bsky.Actor.Defs.FeedViewPref, App.Bsky.Actor.Defs.ThreadViewPref > ]
}
public extension App.Bsky.Actor.Defs {
    public struct ProfileView: UnionCodable, Hashable {
        @Indirect
        public var avatar: Optional < String > 
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var did: String
        @Indirect
        public var displayName: Optional < String > 
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Optional < Date > 
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var viewer: Optional < App.Bsky.Actor.Defs.ViewerState > 
        public init(
            avatar: Optional < String > = nil, 
            description: Optional < String > = nil, 
            did: String, 
            displayName: Optional < String > = nil, 
            handle: String, 
            indexedAt: Optional < Date > = nil, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            viewer: Optional < App.Bsky.Actor.Defs.ViewerState > = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._description = .wrapped(description)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.actor.defs#profileView"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct ProfileViewBasic: UnionCodable, Hashable {
        @Indirect
        public var avatar: Optional < String > 
        @Indirect
        public var did: String
        @Indirect
        public var displayName: Optional < String > 
        @Indirect
        public var handle: String
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var viewer: Optional < App.Bsky.Actor.Defs.ViewerState > 
        public init(
            avatar: Optional < String > = nil, 
            did: String, 
            displayName: Optional < String > = nil, 
            handle: String, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            viewer: Optional < App.Bsky.Actor.Defs.ViewerState > = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._handle = .wrapped(handle)
            self._labels = .wrapped(labels)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.actor.defs#profileViewBasic"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct ProfileViewDetailed: UnionCodable, Hashable {
        @Indirect
        public var avatar: Optional < String > 
        @Indirect
        public var banner: Optional < String > 
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var did: String
        @Indirect
        public var displayName: Optional < String > 
        @Indirect
        public var followersCount: Optional < Int > 
        @Indirect
        public var followsCount: Optional < Int > 
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Optional < Date > 
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var postsCount: Optional < Int > 
        @Indirect
        public var viewer: Optional < App.Bsky.Actor.Defs.ViewerState > 
        public init(
            avatar: Optional < String > = nil, 
            banner: Optional < String > = nil, 
            description: Optional < String > = nil, 
            did: String, 
            displayName: Optional < String > = nil, 
            followersCount: Optional < Int > = nil, 
            followsCount: Optional < Int > = nil, 
            handle: String, 
            indexedAt: Optional < Date > = nil, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            postsCount: Optional < Int > = nil, 
            viewer: Optional < App.Bsky.Actor.Defs.ViewerState > = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._banner = .wrapped(banner)
            self._description = .wrapped(description)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._followersCount = .wrapped(followersCount)
            self._followsCount = .wrapped(followsCount)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._postsCount = .wrapped(postsCount)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.actor.defs#profileViewDetailed"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct SavedFeedsPref: UnionCodable, Hashable {
        @Indirect
        public var pinned: [ATURI]
        @Indirect
        public var saved: [ATURI]
        public init(
            pinned: [ATURI], 
            saved: [ATURI]
        ) {
            self._pinned = .wrapped(pinned)
            self._saved = .wrapped(saved)
        }
        public static let typeValue = "app.bsky.actor.defs#savedFeedsPref"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct ThreadViewPref: UnionCodable, Hashable {
        @Indirect
        public var prioritizeFollowedUsers: Optional < Bool > 
        @Indirect
        public var sort: Optional < String > 
        public init(
            prioritizeFollowedUsers: Optional < Bool > = nil, 
            sort: Optional < String > = nil
        ) {
            self._prioritizeFollowedUsers = .wrapped(prioritizeFollowedUsers)
            self._sort = .wrapped(sort)
        }
        public static let typeValue = "app.bsky.actor.defs#threadViewPref"
    }
}
public extension App.Bsky.Actor.Defs {
    public struct ViewerState: UnionCodable, Hashable {
        @Indirect
        public var blockedBy: Optional < Bool > 
        @Indirect
        public var blocking: Optional < ATURI > 
        @Indirect
        public var followedBy: Optional < ATURI > 
        @Indirect
        public var following: Optional < ATURI > 
        @Indirect
        public var muted: Optional < Bool > 
        @Indirect
        public var mutedByList: Optional < App.Bsky.Graph.Defs.ListViewBasic > 
        public init(
            blockedBy: Optional < Bool > = nil, 
            blocking: Optional < ATURI > = nil, 
            followedBy: Optional < ATURI > = nil, 
            following: Optional < ATURI > = nil, 
            muted: Optional < Bool > = nil, 
            mutedByList: Optional < App.Bsky.Graph.Defs.ListViewBasic > = nil
        ) {
            self._blockedBy = .wrapped(blockedBy)
            self._blocking = .wrapped(blocking)
            self._followedBy = .wrapped(followedBy)
            self._following = .wrapped(following)
            self._muted = .wrapped(muted)
            self._mutedByList = .wrapped(mutedByList)
        }
        public static let typeValue = "app.bsky.actor.defs#viewerState"
    }
}
public extension App.Bsky.Actor {
    struct GetPreferences: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            public init(
            
            ) {
            
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var preferences: App.Bsky.Actor.Defs.Preferences
            public init(
                preferences: App.Bsky.Actor.Defs.Preferences
            ) {
                self._preferences = .wrapped(preferences)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getPreferences"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct GetProfile: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))

                return parameters
            }
        }
        public typealias Output = App.Bsky.Actor.Defs.ProfileViewDetailed
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getProfile"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct GetProfiles: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actors: [String]
            public init(
                actors: [String]
            ) {
                self._actors = .wrapped(actors)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actors.toQueryItems(name: "actors"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var profiles: [App.Bsky.Actor.Defs.ProfileViewDetailed]
            public init(
                profiles: [App.Bsky.Actor.Defs.ProfileViewDetailed]
            ) {
                self._profiles = .wrapped(profiles)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getProfiles"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct GetSuggestions: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var cursor: Optional < String > 
            public init(
                actors: [App.Bsky.Actor.Defs.ProfileView], 
                cursor: Optional < String > = nil
            ) {
                self._actors = .wrapped(actors)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getSuggestions"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    public struct Profile: UnionCodable, Hashable {
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var displayName: Optional < String > 
        @Indirect
        public var labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > 
        public init(
            description: Optional < String > = nil, 
            displayName: Optional < String > = nil, 
            labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > = nil
        ) {
            self._description = .wrapped(description)
            self._displayName = .wrapped(displayName)
            self._labels = .wrapped(labels)
        }
        public static let typeValue = "app.bsky.actor.profile"
    }
}
public extension App.Bsky.Actor {
    struct PutPreferences: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var preferences: App.Bsky.Actor.Defs.Preferences
            public init(
                preferences: App.Bsky.Actor.Defs.Preferences
            ) {
                self._preferences = .wrapped(preferences)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.actor.putPreferences"
        public let input: Input?
    }
}
public extension App.Bsky.Actor {
    struct SearchActors: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var term: Optional < String > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                term: Optional < String > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._term = .wrapped(term)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: term.toQueryItems(name: "term"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var cursor: Optional < String > 
            public init(
                actors: [App.Bsky.Actor.Defs.ProfileView], 
                cursor: Optional < String > = nil
            ) {
                self._actors = .wrapped(actors)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.searchActors"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct SearchActorsTypeahead: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var term: Optional < String > 
            public init(
                limit: Optional < Int > = nil, 
                term: Optional < String > = nil
            ) {
                self._limit = .wrapped(limit)
                self._term = .wrapped(term)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: term.toQueryItems(name: "term"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Actor.Defs.ProfileViewBasic]
            public init(
                actors: [App.Bsky.Actor.Defs.ProfileViewBasic]
            ) {
                self._actors = .wrapped(actors)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.searchActorsTypeahead"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Embed.External {
    public struct External: UnionCodable, Hashable {
        @Indirect
        public var description: String
        @Indirect
        public var title: String
        @Indirect
        public var uri: SafeURL
        public init(
            description: String, 
            title: String, 
            uri: SafeURL
        ) {
            self._description = .wrapped(description)
            self._title = .wrapped(title)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.embed.external#external"
    }
}
public extension App.Bsky.Embed {
    public struct External: UnionCodable, Hashable {
        @Indirect
        public var external: App.Bsky.Embed.External.External
        public init(
            external: App.Bsky.Embed.External.External
        ) {
            self._external = .wrapped(external)
        }
        public static let typeValue = "app.bsky.embed.external"
    }
}
public extension App.Bsky.Embed.External {
    public struct View: UnionCodable, Hashable {
        @Indirect
        public var external: App.Bsky.Embed.External.ViewExternal
        public init(
            external: App.Bsky.Embed.External.ViewExternal
        ) {
            self._external = .wrapped(external)
        }
        public static let typeValue = "app.bsky.embed.external#view"
    }
}
public extension App.Bsky.Embed.External {
    public struct ViewExternal: UnionCodable, Hashable {
        @Indirect
        public var description: String
        @Indirect
        public var thumb: Optional < String > 
        @Indirect
        public var title: String
        @Indirect
        public var uri: SafeURL
        public init(
            description: String, 
            thumb: Optional < String > = nil, 
            title: String, 
            uri: SafeURL
        ) {
            self._description = .wrapped(description)
            self._thumb = .wrapped(thumb)
            self._title = .wrapped(title)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.embed.external#viewExternal"
    }
}
public extension App.Bsky.Embed.Images {
    public struct AspectRatio: UnionCodable, Hashable {
        @Indirect
        public var height: Int
        @Indirect
        public var width: Int
        public init(
            height: Int, 
            width: Int
        ) {
            self._height = .wrapped(height)
            self._width = .wrapped(width)
        }
        public static let typeValue = "app.bsky.embed.images#aspectRatio"
    }
}
public extension App.Bsky.Embed.Images {
    public struct Image: UnionCodable, Hashable {
        @Indirect
        public var alt: String
        @Indirect
        public var aspectRatio: Optional < App.Bsky.Embed.Images.AspectRatio > 
        public init(
            alt: String, 
            aspectRatio: Optional < App.Bsky.Embed.Images.AspectRatio > = nil
        ) {
            self._alt = .wrapped(alt)
            self._aspectRatio = .wrapped(aspectRatio)
        }
        public static let typeValue = "app.bsky.embed.images#image"
    }
}
public extension App.Bsky.Embed {
    public struct Images: UnionCodable, Hashable {
        @Indirect
        public var images: [App.Bsky.Embed.Images.Image]
        public init(
            images: [App.Bsky.Embed.Images.Image]
        ) {
            self._images = .wrapped(images)
        }
        public static let typeValue = "app.bsky.embed.images"
    }
}
public extension App.Bsky.Embed.Images {
    public struct View: UnionCodable, Hashable {
        @Indirect
        public var images: [App.Bsky.Embed.Images.ViewImage]
        public init(
            images: [App.Bsky.Embed.Images.ViewImage]
        ) {
            self._images = .wrapped(images)
        }
        public static let typeValue = "app.bsky.embed.images#view"
    }
}
public extension App.Bsky.Embed.Images {
    public struct ViewImage: UnionCodable, Hashable {
        @Indirect
        public var alt: String
        @Indirect
        public var aspectRatio: Optional < App.Bsky.Embed.Images.AspectRatio > 
        @Indirect
        public var fullsize: String
        @Indirect
        public var thumb: String
        public init(
            alt: String, 
            aspectRatio: Optional < App.Bsky.Embed.Images.AspectRatio > = nil, 
            fullsize: String, 
            thumb: String
        ) {
            self._alt = .wrapped(alt)
            self._aspectRatio = .wrapped(aspectRatio)
            self._fullsize = .wrapped(fullsize)
            self._thumb = .wrapped(thumb)
        }
        public static let typeValue = "app.bsky.embed.images#viewImage"
    }
}
public extension App.Bsky.Embed {
    public struct Record: UnionCodable, Hashable {
        @Indirect
        public var record: Com.Atproto.Repo.StrongRef
        public init(
            record: Com.Atproto.Repo.StrongRef
        ) {
            self._record = .wrapped(record)
        }
        public static let typeValue = "app.bsky.embed.record"
    }
}
public extension App.Bsky.Embed.Record {
    public struct View: UnionCodable, Hashable {
        @Indirect
        public var record: Union5 < App.Bsky.Embed.Record.ViewRecord, App.Bsky.Embed.Record.ViewNotFound, App.Bsky.Embed.Record.ViewBlocked, App.Bsky.Feed.Defs.GeneratorView, App.Bsky.Graph.Defs.ListView > 
        public init(
            record: Union5 < App.Bsky.Embed.Record.ViewRecord, App.Bsky.Embed.Record.ViewNotFound, App.Bsky.Embed.Record.ViewBlocked, App.Bsky.Feed.Defs.GeneratorView, App.Bsky.Graph.Defs.ListView > 
        ) {
            self._record = .wrapped(record)
        }
        public static let typeValue = "app.bsky.embed.record#view"
    }
}
public extension App.Bsky.Embed.Record {
    public struct ViewBlocked: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Feed.Defs.BlockedAuthor
        @Indirect
        public var blocked: Bool
        @Indirect
        public var uri: ATURI
        public init(
            author: App.Bsky.Feed.Defs.BlockedAuthor, 
            blocked: Bool, 
            uri: ATURI
        ) {
            self._author = .wrapped(author)
            self._blocked = .wrapped(blocked)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.embed.record#viewBlocked"
    }
}
public extension App.Bsky.Embed.Record {
    public struct ViewNotFound: UnionCodable, Hashable {
        @Indirect
        public var notFound: Bool
        @Indirect
        public var uri: ATURI
        public init(
            notFound: Bool, 
            uri: ATURI
        ) {
            self._notFound = .wrapped(notFound)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.embed.record#viewNotFound"
    }
}
public extension App.Bsky.Embed.Record {
    public struct ViewRecord: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Actor.Defs.ProfileViewBasic
        @Indirect
        public var cid: String
        @Indirect
        public var embeds: Optional < [Union4 < App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View > ] > 
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: LexiconUnknownUnion
        public init(
            author: App.Bsky.Actor.Defs.ProfileViewBasic, 
            cid: String, 
            embeds: Optional < [Union4 < App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View > ] > = nil, 
            indexedAt: Date, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            uri: ATURI, 
            value: LexiconUnknownUnion
        ) {
            self._author = .wrapped(author)
            self._cid = .wrapped(cid)
            self._embeds = .wrapped(embeds)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = "app.bsky.embed.record#viewRecord"
    }
}
public extension App.Bsky.Embed {
    public struct RecordWithMedia: UnionCodable, Hashable {
        @Indirect
        public var media: Union2 < App.Bsky.Embed.Images, App.Bsky.Embed.External > 
        @Indirect
        public var record: App.Bsky.Embed.Record
        public init(
            media: Union2 < App.Bsky.Embed.Images, App.Bsky.Embed.External > , 
            record: App.Bsky.Embed.Record
        ) {
            self._media = .wrapped(media)
            self._record = .wrapped(record)
        }
        public static let typeValue = "app.bsky.embed.recordWithMedia"
    }
}
public extension App.Bsky.Embed.RecordWithMedia {
    public struct View: UnionCodable, Hashable {
        @Indirect
        public var media: Union2 < App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View > 
        @Indirect
        public var record: App.Bsky.Embed.Record.View
        public init(
            media: Union2 < App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View > , 
            record: App.Bsky.Embed.Record.View
        ) {
            self._media = .wrapped(media)
            self._record = .wrapped(record)
        }
        public static let typeValue = "app.bsky.embed.recordWithMedia#view"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct BlockedAuthor: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var viewer: Optional < App.Bsky.Actor.Defs.ViewerState > 
        public init(
            did: String, 
            viewer: Optional < App.Bsky.Actor.Defs.ViewerState > = nil
        ) {
            self._did = .wrapped(did)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.feed.defs#blockedAuthor"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct BlockedPost: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Feed.Defs.BlockedAuthor
        @Indirect
        public var blocked: Bool
        @Indirect
        public var uri: ATURI
        public init(
            author: App.Bsky.Feed.Defs.BlockedAuthor, 
            blocked: Bool, 
            uri: ATURI
        ) {
            self._author = .wrapped(author)
            self._blocked = .wrapped(blocked)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.feed.defs#blockedPost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct FeedViewPost: UnionCodable, Hashable {
        @Indirect
        public var post: App.Bsky.Feed.Defs.PostView
        @Indirect
        public var reason: Optional < Union1 < App.Bsky.Feed.Defs.ReasonRepost > > 
        @Indirect
        public var reply: Optional < App.Bsky.Feed.Defs.ReplyRef > 
        public init(
            post: App.Bsky.Feed.Defs.PostView, 
            reason: Optional < Union1 < App.Bsky.Feed.Defs.ReasonRepost > > = nil, 
            reply: Optional < App.Bsky.Feed.Defs.ReplyRef > = nil
        ) {
            self._post = .wrapped(post)
            self._reason = .wrapped(reason)
            self._reply = .wrapped(reply)
        }
        public static let typeValue = "app.bsky.feed.defs#feedViewPost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct GeneratorView: UnionCodable, Hashable {
        @Indirect
        public var avatar: Optional < String > 
        @Indirect
        public var cid: String
        @Indirect
        public var creator: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > 
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var likeCount: Optional < Int > 
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: Optional < App.Bsky.Feed.Defs.GeneratorViewerState > 
        public init(
            avatar: Optional < String > = nil, 
            cid: String, 
            creator: App.Bsky.Actor.Defs.ProfileView, 
            description: Optional < String > = nil, 
            descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > = nil, 
            did: String, 
            displayName: String, 
            indexedAt: Date, 
            likeCount: Optional < Int > = nil, 
            uri: ATURI, 
            viewer: Optional < App.Bsky.Feed.Defs.GeneratorViewerState > = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._cid = .wrapped(cid)
            self._creator = .wrapped(creator)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._indexedAt = .wrapped(indexedAt)
            self._likeCount = .wrapped(likeCount)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.feed.defs#generatorView"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct GeneratorViewerState: UnionCodable, Hashable {
        @Indirect
        public var like: Optional < ATURI > 
        public init(
            like: Optional < ATURI > = nil
        ) {
            self._like = .wrapped(like)
        }
        public static let typeValue = "app.bsky.feed.defs#generatorViewerState"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct NotFoundPost: UnionCodable, Hashable {
        @Indirect
        public var notFound: Bool
        @Indirect
        public var uri: ATURI
        public init(
            notFound: Bool, 
            uri: ATURI
        ) {
            self._notFound = .wrapped(notFound)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.feed.defs#notFoundPost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct PostView: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Actor.Defs.ProfileViewBasic
        @Indirect
        public var cid: String
        @Indirect
        public var embed: Optional < Union4 < App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View > > 
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var likeCount: Optional < Int > 
        @Indirect
        public var record: LexiconUnknownUnion
        @Indirect
        public var replyCount: Optional < Int > 
        @Indirect
        public var repostCount: Optional < Int > 
        @Indirect
        public var threadgate: Optional < App.Bsky.Feed.Defs.ThreadgateView > 
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: Optional < App.Bsky.Feed.Defs.ViewerState > 
        public init(
            author: App.Bsky.Actor.Defs.ProfileViewBasic, 
            cid: String, 
            embed: Optional < Union4 < App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View > > = nil, 
            indexedAt: Date, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            likeCount: Optional < Int > = nil, 
            record: LexiconUnknownUnion, 
            replyCount: Optional < Int > = nil, 
            repostCount: Optional < Int > = nil, 
            threadgate: Optional < App.Bsky.Feed.Defs.ThreadgateView > = nil, 
            uri: ATURI, 
            viewer: Optional < App.Bsky.Feed.Defs.ViewerState > = nil
        ) {
            self._author = .wrapped(author)
            self._cid = .wrapped(cid)
            self._embed = .wrapped(embed)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._likeCount = .wrapped(likeCount)
            self._record = .wrapped(record)
            self._replyCount = .wrapped(replyCount)
            self._repostCount = .wrapped(repostCount)
            self._threadgate = .wrapped(threadgate)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.feed.defs#postView"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct ReasonRepost: UnionCodable, Hashable {
        @Indirect
        public var by: App.Bsky.Actor.Defs.ProfileViewBasic
        @Indirect
        public var indexedAt: Date
        public init(
            by: App.Bsky.Actor.Defs.ProfileViewBasic, 
            indexedAt: Date
        ) {
            self._by = .wrapped(by)
            self._indexedAt = .wrapped(indexedAt)
        }
        public static let typeValue = "app.bsky.feed.defs#reasonRepost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct ReplyRef: UnionCodable, Hashable {
        @Indirect
        public var parent: Union3 < App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > 
        @Indirect
        public var root: Union3 < App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > 
        public init(
            parent: Union3 < App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > , 
            root: Union3 < App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > 
        ) {
            self._parent = .wrapped(parent)
            self._root = .wrapped(root)
        }
        public static let typeValue = "app.bsky.feed.defs#replyRef"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct SkeletonFeedPost: UnionCodable, Hashable {
        @Indirect
        public var post: ATURI
        @Indirect
        public var reason: Optional < Union1 < App.Bsky.Feed.Defs.SkeletonReasonRepost > > 
        public init(
            post: ATURI, 
            reason: Optional < Union1 < App.Bsky.Feed.Defs.SkeletonReasonRepost > > = nil
        ) {
            self._post = .wrapped(post)
            self._reason = .wrapped(reason)
        }
        public static let typeValue = "app.bsky.feed.defs#skeletonFeedPost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct SkeletonReasonRepost: UnionCodable, Hashable {
        @Indirect
        public var repost: ATURI
        public init(
            repost: ATURI
        ) {
            self._repost = .wrapped(repost)
        }
        public static let typeValue = "app.bsky.feed.defs#skeletonReasonRepost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct ThreadViewPost: UnionCodable, Hashable {
        @Indirect
        public var parent: Optional < Union3 < App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > > 
        @Indirect
        public var post: App.Bsky.Feed.Defs.PostView
        @Indirect
        public var replies: Optional < [Union3 < App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > ] > 
        @Indirect
        public var viewer: Optional < App.Bsky.Feed.Defs.ViewerThreadState > 
        public init(
            parent: Optional < Union3 < App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > > = nil, 
            post: App.Bsky.Feed.Defs.PostView, 
            replies: Optional < [Union3 < App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > ] > = nil, 
            viewer: Optional < App.Bsky.Feed.Defs.ViewerThreadState > = nil
        ) {
            self._parent = .wrapped(parent)
            self._post = .wrapped(post)
            self._replies = .wrapped(replies)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.feed.defs#threadViewPost"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct ThreadgateView: UnionCodable, Hashable {
        @Indirect
        public var cid: Optional < String > 
        @Indirect
        public var lists: Optional < [App.Bsky.Graph.Defs.ListViewBasic] > 
        @Indirect
        public var record: Optional < LexiconUnknownUnion > 
        @Indirect
        public var uri: Optional < ATURI > 
        public init(
            cid: Optional < String > = nil, 
            lists: Optional < [App.Bsky.Graph.Defs.ListViewBasic] > = nil, 
            record: Optional < LexiconUnknownUnion > = nil, 
            uri: Optional < ATURI > = nil
        ) {
            self._cid = .wrapped(cid)
            self._lists = .wrapped(lists)
            self._record = .wrapped(record)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.feed.defs#threadgateView"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct ViewerState: UnionCodable, Hashable {
        @Indirect
        public var like: Optional < ATURI > 
        @Indirect
        public var repost: Optional < ATURI > 
        public init(
            like: Optional < ATURI > = nil, 
            repost: Optional < ATURI > = nil
        ) {
            self._like = .wrapped(like)
            self._repost = .wrapped(repost)
        }
        public static let typeValue = "app.bsky.feed.defs#viewerState"
    }
}
public extension App.Bsky.Feed.Defs {
    public struct ViewerThreadState: UnionCodable, Hashable {
        @Indirect
        public var canReply: Optional < Bool > 
        public init(
            canReply: Optional < Bool > = nil
        ) {
            self._canReply = .wrapped(canReply)
        }
        public static let typeValue = "app.bsky.feed.defs#viewerThreadState"
    }
}
public extension App.Bsky.Feed.DescribeFeedGenerator {
    public struct Feed: UnionCodable, Hashable {
        @Indirect
        public var uri: ATURI
        public init(
            uri: ATURI
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.feed.describeFeedGenerator#feed"
    }
}
public extension App.Bsky.Feed.DescribeFeedGenerator {
    public struct Links: UnionCodable, Hashable {
        @Indirect
        public var privacyPolicy: Optional < String > 
        @Indirect
        public var termsOfService: Optional < String > 
        public init(
            privacyPolicy: Optional < String > = nil, 
            termsOfService: Optional < String > = nil
        ) {
            self._privacyPolicy = .wrapped(privacyPolicy)
            self._termsOfService = .wrapped(termsOfService)
        }
        public static let typeValue = "app.bsky.feed.describeFeedGenerator#links"
    }
}
public extension App.Bsky.Feed {
    struct DescribeFeedGenerator: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var did: String
            @Indirect
            public var feeds: [App.Bsky.Feed.DescribeFeedGenerator.Feed]
            @Indirect
            public var links: Optional < App.Bsky.Feed.DescribeFeedGenerator.Links > 
            public init(
                did: String, 
                feeds: [App.Bsky.Feed.DescribeFeedGenerator.Feed], 
                links: Optional < App.Bsky.Feed.DescribeFeedGenerator.Links > = nil
            ) {
                self._did = .wrapped(did)
                self._feeds = .wrapped(feeds)
                self._links = .wrapped(links)
            }
        }
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.describeFeedGenerator"
    }
}
public extension App.Bsky.Feed {
    public struct Generator: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > 
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String
        @Indirect
        public var labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > 
        public init(
            createdAt: Date, 
            description: Optional < String > = nil, 
            descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > = nil, 
            did: String, 
            displayName: String, 
            labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > = nil
        ) {
            self._createdAt = .wrapped(createdAt)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._labels = .wrapped(labels)
        }
        public static let typeValue = "app.bsky.feed.generator"
    }
}
public extension App.Bsky.Feed {
    struct GetActorFeeds: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                actor: String, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                cursor: Optional < String > = nil, 
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._cursor = .wrapped(cursor)
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getActorFeeds"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetActorLikes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                actor: String, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getActorLikes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetAuthorFeed: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var filter: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                actor: String, 
                cursor: Optional < String > = nil, 
                filter: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._filter = .wrapped(filter)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: filter.toQueryItems(name: "filter"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getAuthorFeed"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeed: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: ATURI
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                feed: ATURI, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: feed.toQueryItems(name: "feed"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeed"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeedGenerator: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var feed: ATURI
            public init(
                feed: ATURI
            ) {
                self._feed = .wrapped(feed)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: feed.toQueryItems(name: "feed"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var isOnline: Bool
            @Indirect
            public var isValid: Bool
            @Indirect
            public var view: App.Bsky.Feed.Defs.GeneratorView
            public init(
                isOnline: Bool, 
                isValid: Bool, 
                view: App.Bsky.Feed.Defs.GeneratorView
            ) {
                self._isOnline = .wrapped(isOnline)
                self._isValid = .wrapped(isValid)
                self._view = .wrapped(view)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeedGenerator"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeedGenerators: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var feeds: [ATURI]
            public init(
                feeds: [ATURI]
            ) {
                self._feeds = .wrapped(feeds)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: feeds.toQueryItems(name: "feeds"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeedGenerators"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeedSkeleton: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: ATURI
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                feed: ATURI, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: feed.toQueryItems(name: "feed"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.SkeletonFeedPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.SkeletonFeedPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeedSkeleton"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed.GetLikes {
    public struct Like: UnionCodable, Hashable {
        @Indirect
        public var actor: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var createdAt: Date
        @Indirect
        public var indexedAt: Date
        public init(
            actor: App.Bsky.Actor.Defs.ProfileView, 
            createdAt: Date, 
            indexedAt: Date
        ) {
            self._actor = .wrapped(actor)
            self._createdAt = .wrapped(createdAt)
            self._indexedAt = .wrapped(indexedAt)
        }
        public static let typeValue = "app.bsky.feed.getLikes#like"
    }
}
public extension App.Bsky.Feed {
    struct GetLikes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var uri: ATURI
            public init(
                cid: Optional < String > = nil, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var likes: [App.Bsky.Feed.GetLikes.Like]
            @Indirect
            public var uri: ATURI
            public init(
                cid: Optional < String > = nil, 
                cursor: Optional < String > = nil, 
                likes: [App.Bsky.Feed.GetLikes.Like], 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._likes = .wrapped(likes)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getLikes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetListFeed: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var list: ATURI
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                list: ATURI
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._list = .wrapped(list)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: list.toQueryItems(name: "list"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getListFeed"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetPostThread: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var depth: Optional < Int > 
            @Indirect
            public var parentHeight: Optional < Int > 
            @Indirect
            public var uri: ATURI
            public init(
                depth: Optional < Int > = nil, 
                parentHeight: Optional < Int > = nil, 
                uri: ATURI
            ) {
                self._depth = .wrapped(depth)
                self._parentHeight = .wrapped(parentHeight)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: depth.toQueryItems(name: "depth"))
                parameters.append(contentsOf: parentHeight.toQueryItems(name: "parentHeight"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var thread: Union3 < App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > 
            public init(
                thread: Union3 < App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost > 
            ) {
                self._thread = .wrapped(thread)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getPostThread"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetPosts: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var uris: [ATURI]
            public init(
                uris: [ATURI]
            ) {
                self._uris = .wrapped(uris)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: uris.toQueryItems(name: "uris"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var posts: [App.Bsky.Feed.Defs.PostView]
            public init(
                posts: [App.Bsky.Feed.Defs.PostView]
            ) {
                self._posts = .wrapped(posts)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getPosts"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetRepostedBy: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var uri: ATURI
            public init(
                cid: Optional < String > = nil, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var repostedBy: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var uri: ATURI
            public init(
                cid: Optional < String > = nil, 
                cursor: Optional < String > = nil, 
                repostedBy: [App.Bsky.Actor.Defs.ProfileView], 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._repostedBy = .wrapped(repostedBy)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getRepostedBy"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetSuggestedFeeds: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                cursor: Optional < String > = nil, 
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._cursor = .wrapped(cursor)
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getSuggestedFeeds"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetTimeline: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var algorithm: Optional < String > 
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                algorithm: Optional < String > = nil, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._algorithm = .wrapped(algorithm)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: algorithm.toQueryItems(name: "algorithm"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getTimeline"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    public struct Like: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: Com.Atproto.Repo.StrongRef
        public init(
            createdAt: Date, 
            subject: Com.Atproto.Repo.StrongRef
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.feed.like"
    }
}
public extension App.Bsky.Feed.Post {
    public struct Entity: UnionCodable, Hashable {
        @Indirect
        public var index: App.Bsky.Feed.Post.TextSlice
        @Indirect
        public var type: String
        @Indirect
        public var value: String
        public init(
            index: App.Bsky.Feed.Post.TextSlice, 
            type: String, 
            value: String
        ) {
            self._index = .wrapped(index)
            self._type = .wrapped(type)
            self._value = .wrapped(value)
        }
        public static let typeValue = "app.bsky.feed.post#entity"
    }
}
public extension App.Bsky.Feed {
    public struct Post: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var embed: Optional < Union4 < App.Bsky.Embed.Images, App.Bsky.Embed.External, App.Bsky.Embed.Record, App.Bsky.Embed.RecordWithMedia > > 
        @Indirect
        public var entities: Optional < [App.Bsky.Feed.Post.Entity] > 
        @Indirect
        public var facets: Optional < [App.Bsky.Richtext.Facet] > 
        @Indirect
        public var labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > 
        @Indirect
        public var langs: Optional < [String] > 
        @Indirect
        public var reply: Optional < App.Bsky.Feed.Post.ReplyRef > 
        @Indirect
        public var text: String
        public init(
            createdAt: Date, 
            embed: Optional < Union4 < App.Bsky.Embed.Images, App.Bsky.Embed.External, App.Bsky.Embed.Record, App.Bsky.Embed.RecordWithMedia > > = nil, 
            entities: Optional < [App.Bsky.Feed.Post.Entity] > = nil, 
            facets: Optional < [App.Bsky.Richtext.Facet] > = nil, 
            labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > = nil, 
            langs: Optional < [String] > = nil, 
            reply: Optional < App.Bsky.Feed.Post.ReplyRef > = nil, 
            text: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._embed = .wrapped(embed)
            self._entities = .wrapped(entities)
            self._facets = .wrapped(facets)
            self._labels = .wrapped(labels)
            self._langs = .wrapped(langs)
            self._reply = .wrapped(reply)
            self._text = .wrapped(text)
        }
        public static let typeValue = "app.bsky.feed.post"
    }
}
public extension App.Bsky.Feed.Post {
    public struct ReplyRef: UnionCodable, Hashable {
        @Indirect
        public var parent: Com.Atproto.Repo.StrongRef
        @Indirect
        public var root: Com.Atproto.Repo.StrongRef
        public init(
            parent: Com.Atproto.Repo.StrongRef, 
            root: Com.Atproto.Repo.StrongRef
        ) {
            self._parent = .wrapped(parent)
            self._root = .wrapped(root)
        }
        public static let typeValue = "app.bsky.feed.post#replyRef"
    }
}
public extension App.Bsky.Feed.Post {
    public struct TextSlice: UnionCodable, Hashable {
        @Indirect
        public var end: Int
        @Indirect
        public var start: Int
        public init(
            end: Int, 
            start: Int
        ) {
            self._end = .wrapped(end)
            self._start = .wrapped(start)
        }
        public static let typeValue = "app.bsky.feed.post#textSlice"
    }
}
public extension App.Bsky.Feed {
    public struct Repost: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: Com.Atproto.Repo.StrongRef
        public init(
            createdAt: Date, 
            subject: Com.Atproto.Repo.StrongRef
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.feed.repost"
    }
}
public extension App.Bsky.Feed.Threadgate {
    public struct FollowingRule: UnionCodable, Hashable {
        public init(
        
        ) {
        
        }
        public static let typeValue = "app.bsky.feed.threadgate#followingRule"
    }
}
public extension App.Bsky.Feed.Threadgate {
    public struct ListRule: UnionCodable, Hashable {
        @Indirect
        public var list: ATURI
        public init(
            list: ATURI
        ) {
            self._list = .wrapped(list)
        }
        public static let typeValue = "app.bsky.feed.threadgate#listRule"
    }
}
public extension App.Bsky.Feed {
    public struct Threadgate: UnionCodable, Hashable {
        @Indirect
        public var allow: Optional < [Union3 < App.Bsky.Feed.Threadgate.MentionRule, App.Bsky.Feed.Threadgate.FollowingRule, App.Bsky.Feed.Threadgate.ListRule > ] > 
        @Indirect
        public var createdAt: Date
        @Indirect
        public var post: ATURI
        public init(
            allow: Optional < [Union3 < App.Bsky.Feed.Threadgate.MentionRule, App.Bsky.Feed.Threadgate.FollowingRule, App.Bsky.Feed.Threadgate.ListRule > ] > = nil, 
            createdAt: Date, 
            post: ATURI
        ) {
            self._allow = .wrapped(allow)
            self._createdAt = .wrapped(createdAt)
            self._post = .wrapped(post)
        }
        public static let typeValue = "app.bsky.feed.threadgate"
    }
}
public extension App.Bsky.Feed.Threadgate {
    public struct MentionRule: UnionCodable, Hashable {
        public init(
        
        ) {
        
        }
        public static let typeValue = "app.bsky.feed.threadgate#mentionRule"
    }
}
public extension App.Bsky.Graph {
    public struct Block: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: String
        public init(
            createdAt: Date, 
            subject: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.graph.block"
    }
}
public extension App.Bsky.Graph.Defs {
}
public extension App.Bsky.Graph.Defs {
    public struct ListItemView: UnionCodable, Hashable {
        @Indirect
        public var subject: App.Bsky.Actor.Defs.ProfileView
        public init(
            subject: App.Bsky.Actor.Defs.ProfileView
        ) {
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.graph.defs#listItemView"
    }
}
public extension App.Bsky.Graph.Defs {
    typealias ListPurpose = String
}
public extension App.Bsky.Graph.Defs {
    public struct ListView: UnionCodable, Hashable {
        @Indirect
        public var avatar: Optional < String > 
        @Indirect
        public var cid: String
        @Indirect
        public var creator: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > 
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var name: String
        @Indirect
        public var purpose: App.Bsky.Graph.Defs.ListPurpose
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: Optional < App.Bsky.Graph.Defs.ListViewerState > 
        public init(
            avatar: Optional < String > = nil, 
            cid: String, 
            creator: App.Bsky.Actor.Defs.ProfileView, 
            description: Optional < String > = nil, 
            descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > = nil, 
            indexedAt: Date, 
            name: String, 
            purpose: App.Bsky.Graph.Defs.ListPurpose, 
            uri: ATURI, 
            viewer: Optional < App.Bsky.Graph.Defs.ListViewerState > = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._cid = .wrapped(cid)
            self._creator = .wrapped(creator)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._indexedAt = .wrapped(indexedAt)
            self._name = .wrapped(name)
            self._purpose = .wrapped(purpose)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.graph.defs#listView"
    }
}
public extension App.Bsky.Graph.Defs {
    public struct ListViewBasic: UnionCodable, Hashable {
        @Indirect
        public var avatar: Optional < String > 
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Optional < Date > 
        @Indirect
        public var name: String
        @Indirect
        public var purpose: App.Bsky.Graph.Defs.ListPurpose
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: Optional < App.Bsky.Graph.Defs.ListViewerState > 
        public init(
            avatar: Optional < String > = nil, 
            cid: String, 
            indexedAt: Optional < Date > = nil, 
            name: String, 
            purpose: App.Bsky.Graph.Defs.ListPurpose, 
            uri: ATURI, 
            viewer: Optional < App.Bsky.Graph.Defs.ListViewerState > = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._name = .wrapped(name)
            self._purpose = .wrapped(purpose)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = "app.bsky.graph.defs#listViewBasic"
    }
}
public extension App.Bsky.Graph.Defs {
    public struct ListViewerState: UnionCodable, Hashable {
        @Indirect
        public var blocked: Optional < ATURI > 
        @Indirect
        public var muted: Optional < Bool > 
        public init(
            blocked: Optional < ATURI > = nil, 
            muted: Optional < Bool > = nil
        ) {
            self._blocked = .wrapped(blocked)
            self._muted = .wrapped(muted)
        }
        public static let typeValue = "app.bsky.graph.defs#listViewerState"
    }
}
public extension App.Bsky.Graph.Defs {
}
public extension App.Bsky.Graph {
    public struct Follow: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: String
        public init(
            createdAt: Date, 
            subject: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.graph.follow"
    }
}
public extension App.Bsky.Graph {
    struct GetBlocks: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var blocks: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var cursor: Optional < String > 
            public init(
                blocks: [App.Bsky.Actor.Defs.ProfileView], 
                cursor: Optional < String > = nil
            ) {
                self._blocks = .wrapped(blocks)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getBlocks"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetFollowers: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                actor: String, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var followers: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var subject: App.Bsky.Actor.Defs.ProfileView
            public init(
                cursor: Optional < String > = nil, 
                followers: [App.Bsky.Actor.Defs.ProfileView], 
                subject: App.Bsky.Actor.Defs.ProfileView
            ) {
                self._cursor = .wrapped(cursor)
                self._followers = .wrapped(followers)
                self._subject = .wrapped(subject)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getFollowers"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetFollows: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                actor: String, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var follows: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var subject: App.Bsky.Actor.Defs.ProfileView
            public init(
                cursor: Optional < String > = nil, 
                follows: [App.Bsky.Actor.Defs.ProfileView], 
                subject: App.Bsky.Actor.Defs.ProfileView
            ) {
                self._cursor = .wrapped(cursor)
                self._follows = .wrapped(follows)
                self._subject = .wrapped(subject)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getFollows"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetList: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var list: ATURI
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                list: ATURI
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._list = .wrapped(list)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: list.toQueryItems(name: "list"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var items: [App.Bsky.Graph.Defs.ListItemView]
            @Indirect
            public var list: App.Bsky.Graph.Defs.ListView
            public init(
                cursor: Optional < String > = nil, 
                items: [App.Bsky.Graph.Defs.ListItemView], 
                list: App.Bsky.Graph.Defs.ListView
            ) {
                self._cursor = .wrapped(cursor)
                self._items = .wrapped(items)
                self._list = .wrapped(list)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getList"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetListBlocks: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var lists: [App.Bsky.Graph.Defs.ListView]
            public init(
                cursor: Optional < String > = nil, 
                lists: [App.Bsky.Graph.Defs.ListView]
            ) {
                self._cursor = .wrapped(cursor)
                self._lists = .wrapped(lists)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getListBlocks"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetListMutes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var lists: [App.Bsky.Graph.Defs.ListView]
            public init(
                cursor: Optional < String > = nil, 
                lists: [App.Bsky.Graph.Defs.ListView]
            ) {
                self._cursor = .wrapped(cursor)
                self._lists = .wrapped(lists)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getListMutes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetLists: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                actor: String, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var lists: [App.Bsky.Graph.Defs.ListView]
            public init(
                cursor: Optional < String > = nil, 
                lists: [App.Bsky.Graph.Defs.ListView]
            ) {
                self._cursor = .wrapped(cursor)
                self._lists = .wrapped(lists)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getLists"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetMutes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var mutes: [App.Bsky.Actor.Defs.ProfileView]
            public init(
                cursor: Optional < String > = nil, 
                mutes: [App.Bsky.Actor.Defs.ProfileView]
            ) {
                self._cursor = .wrapped(cursor)
                self._mutes = .wrapped(mutes)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getMutes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetSuggestedFollowsByActor: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var suggestions: [App.Bsky.Actor.Defs.ProfileView]
            public init(
                suggestions: [App.Bsky.Actor.Defs.ProfileView]
            ) {
                self._suggestions = .wrapped(suggestions)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getSuggestedFollowsByActor"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    public struct List: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var description: Optional < String > 
        @Indirect
        public var descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > 
        @Indirect
        public var labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > 
        @Indirect
        public var name: String
        @Indirect
        public var purpose: App.Bsky.Graph.Defs.ListPurpose
        public init(
            createdAt: Date, 
            description: Optional < String > = nil, 
            descriptionFacets: Optional < [App.Bsky.Richtext.Facet] > = nil, 
            labels: Optional < Union1 < Com.Atproto.Label.Defs.SelfLabels > > = nil, 
            name: String, 
            purpose: App.Bsky.Graph.Defs.ListPurpose
        ) {
            self._createdAt = .wrapped(createdAt)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._labels = .wrapped(labels)
            self._name = .wrapped(name)
            self._purpose = .wrapped(purpose)
        }
        public static let typeValue = "app.bsky.graph.list"
    }
}
public extension App.Bsky.Graph {
    public struct Listblock: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: ATURI
        public init(
            createdAt: Date, 
            subject: ATURI
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.graph.listblock"
    }
}
public extension App.Bsky.Graph {
    public struct Listitem: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var list: ATURI
        @Indirect
        public var subject: String
        public init(
            createdAt: Date, 
            list: ATURI, 
            subject: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._list = .wrapped(list)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "app.bsky.graph.listitem"
    }
}
public extension App.Bsky.Graph {
    struct MuteActor: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.muteActor"
        public let input: Input?
    }
}
public extension App.Bsky.Graph {
    struct MuteActorList: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var list: ATURI
            public init(
                list: ATURI
            ) {
                self._list = .wrapped(list)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.muteActorList"
        public let input: Input?
    }
}
public extension App.Bsky.Graph {
    struct UnmuteActor: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.unmuteActor"
        public let input: Input?
    }
}
public extension App.Bsky.Graph {
    struct UnmuteActorList: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var list: ATURI
            public init(
                list: ATURI
            ) {
                self._list = .wrapped(list)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.unmuteActorList"
        public let input: Input?
    }
}
public extension App.Bsky.Notification {
    struct GetUnreadCount: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var seenAt: Optional < Date > 
            public init(
                seenAt: Optional < Date > = nil
            ) {
                self._seenAt = .wrapped(seenAt)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: seenAt.toQueryItems(name: "seenAt"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var count: Int
            public init(
                count: Int
            ) {
                self._count = .wrapped(count)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.notification.getUnreadCount"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Notification {
    struct ListNotifications: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var seenAt: Optional < Date > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                seenAt: Optional < Date > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._seenAt = .wrapped(seenAt)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: seenAt.toQueryItems(name: "seenAt"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var notifications: [App.Bsky.Notification.ListNotifications.Notification]
            public init(
                cursor: Optional < String > = nil, 
                notifications: [App.Bsky.Notification.ListNotifications.Notification]
            ) {
                self._cursor = .wrapped(cursor)
                self._notifications = .wrapped(notifications)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.notification.listNotifications"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Notification.ListNotifications {
    public struct Notification: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var isRead: Bool
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var reason: String
        @Indirect
        public var reasonSubject: Optional < ATURI > 
        @Indirect
        public var record: LexiconUnknownUnion
        @Indirect
        public var uri: ATURI
        public init(
            author: App.Bsky.Actor.Defs.ProfileView, 
            cid: String, 
            indexedAt: Date, 
            isRead: Bool, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            reason: String, 
            reasonSubject: Optional < ATURI > = nil, 
            record: LexiconUnknownUnion, 
            uri: ATURI
        ) {
            self._author = .wrapped(author)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._isRead = .wrapped(isRead)
            self._labels = .wrapped(labels)
            self._reason = .wrapped(reason)
            self._reasonSubject = .wrapped(reasonSubject)
            self._record = .wrapped(record)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.notification.listNotifications#notification"
    }
}
public extension App.Bsky.Notification {
    struct RegisterPush: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var appId: String
            @Indirect
            public var platform: String
            @Indirect
            public var serviceDid: String
            @Indirect
            public var token: String
            public init(
                appId: String, 
                platform: String, 
                serviceDid: String, 
                token: String
            ) {
                self._appId = .wrapped(appId)
                self._platform = .wrapped(platform)
                self._serviceDid = .wrapped(serviceDid)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.notification.registerPush"
        public let input: Input?
    }
}
public extension App.Bsky.Notification {
    struct UpdateSeen: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var seenAt: Date
            public init(
                seenAt: Date
            ) {
                self._seenAt = .wrapped(seenAt)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.notification.updateSeen"
        public let input: Input?
    }
}
public extension App.Bsky.Richtext.Facet {
    public struct ByteSlice: UnionCodable, Hashable {
        @Indirect
        public var byteEnd: Int
        @Indirect
        public var byteStart: Int
        public init(
            byteEnd: Int, 
            byteStart: Int
        ) {
            self._byteEnd = .wrapped(byteEnd)
            self._byteStart = .wrapped(byteStart)
        }
        public static let typeValue = "app.bsky.richtext.facet#byteSlice"
    }
}
public extension App.Bsky.Richtext.Facet {
    public struct Link: UnionCodable, Hashable {
        @Indirect
        public var uri: SafeURL
        public init(
            uri: SafeURL
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "app.bsky.richtext.facet#link"
    }
}
public extension App.Bsky.Richtext {
    public struct Facet: UnionCodable, Hashable {
        @Indirect
        public var features: [Union2 < App.Bsky.Richtext.Facet.Mention, App.Bsky.Richtext.Facet.Link > ]
        @Indirect
        public var index: App.Bsky.Richtext.Facet.ByteSlice
        public init(
            features: [Union2 < App.Bsky.Richtext.Facet.Mention, App.Bsky.Richtext.Facet.Link > ], 
            index: App.Bsky.Richtext.Facet.ByteSlice
        ) {
            self._features = .wrapped(features)
            self._index = .wrapped(index)
        }
        public static let typeValue = "app.bsky.richtext.facet"
    }
}
public extension App.Bsky.Richtext.Facet {
    public struct Mention: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = "app.bsky.richtext.facet#mention"
    }
}
public extension App.Bsky.Unspecced {
    struct ApplyLabels: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var labels: [Com.Atproto.Label.Defs.Label]
            public init(
                labels: [Com.Atproto.Label.Defs.Label]
            ) {
                self._labels = .wrapped(labels)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.unspecced.applyLabels"
        public let input: Input?
    }
}
public extension App.Bsky.Unspecced {
    struct GetPopular: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var includeNsfw: Optional < Bool > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                includeNsfw: Optional < Bool > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._includeNsfw = .wrapped(includeNsfw)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: includeNsfw.toQueryItems(name: "includeNsfw"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.getPopular"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Unspecced {
    struct GetPopularFeedGenerators: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var query: Optional < String > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                query: Optional < String > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._query = .wrapped(query)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: query.toQueryItems(name: "query"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                cursor: Optional < String > = nil, 
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._cursor = .wrapped(cursor)
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.getPopularFeedGenerators"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Unspecced {
    struct GetTimelineSkeleton: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.SkeletonFeedPost]
            public init(
                cursor: Optional < String > = nil, 
                feed: [App.Bsky.Feed.Defs.SkeletonFeedPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.getTimelineSkeleton"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
    public struct ActionReversal: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var reason: String
        public init(
            createdAt: Date, 
            createdBy: String, 
            reason: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._reason = .wrapped(reason)
        }
        public static let typeValue = "com.atproto.admin.defs#actionReversal"
    }
}
public extension Com.Atproto.Admin.Defs {
    typealias ActionType = String
}
public extension Com.Atproto.Admin.Defs {
    public struct ActionView: UnionCodable, Hashable {
        @Indirect
        public var action: Com.Atproto.Admin.Defs.ActionType
        @Indirect
        public var createLabelVals: Optional < [String] > 
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var durationInHours: Optional < Int > 
        @Indirect
        public var id: Int
        @Indirect
        public var negateLabelVals: Optional < [String] > 
        @Indirect
        public var reason: String
        @Indirect
        public var resolvedReportIds: [Int]
        @Indirect
        public var reversal: Optional < Com.Atproto.Admin.Defs.ActionReversal > 
        @Indirect
        public var subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
        @Indirect
        public var subjectBlobCids: [String]
        public init(
            action: Com.Atproto.Admin.Defs.ActionType, 
            createLabelVals: Optional < [String] > = nil, 
            createdAt: Date, 
            createdBy: String, 
            durationInHours: Optional < Int > = nil, 
            id: Int, 
            negateLabelVals: Optional < [String] > = nil, 
            reason: String, 
            resolvedReportIds: [Int], 
            reversal: Optional < Com.Atproto.Admin.Defs.ActionReversal > = nil, 
            subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > , 
            subjectBlobCids: [String]
        ) {
            self._action = .wrapped(action)
            self._createLabelVals = .wrapped(createLabelVals)
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._durationInHours = .wrapped(durationInHours)
            self._id = .wrapped(id)
            self._negateLabelVals = .wrapped(negateLabelVals)
            self._reason = .wrapped(reason)
            self._resolvedReportIds = .wrapped(resolvedReportIds)
            self._reversal = .wrapped(reversal)
            self._subject = .wrapped(subject)
            self._subjectBlobCids = .wrapped(subjectBlobCids)
        }
        public static let typeValue = "com.atproto.admin.defs#actionView"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct ActionViewCurrent: UnionCodable, Hashable {
        @Indirect
        public var action: Com.Atproto.Admin.Defs.ActionType
        @Indirect
        public var durationInHours: Optional < Int > 
        @Indirect
        public var id: Int
        public init(
            action: Com.Atproto.Admin.Defs.ActionType, 
            durationInHours: Optional < Int > = nil, 
            id: Int
        ) {
            self._action = .wrapped(action)
            self._durationInHours = .wrapped(durationInHours)
            self._id = .wrapped(id)
        }
        public static let typeValue = "com.atproto.admin.defs#actionViewCurrent"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct ActionViewDetail: UnionCodable, Hashable {
        @Indirect
        public var action: Com.Atproto.Admin.Defs.ActionType
        @Indirect
        public var createLabelVals: Optional < [String] > 
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var durationInHours: Optional < Int > 
        @Indirect
        public var id: Int
        @Indirect
        public var negateLabelVals: Optional < [String] > 
        @Indirect
        public var reason: String
        @Indirect
        public var resolvedReports: [Com.Atproto.Admin.Defs.ReportView]
        @Indirect
        public var reversal: Optional < Com.Atproto.Admin.Defs.ActionReversal > 
        @Indirect
        public var subject: Union4 < Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound > 
        @Indirect
        public var subjectBlobs: [Com.Atproto.Admin.Defs.BlobView]
        public init(
            action: Com.Atproto.Admin.Defs.ActionType, 
            createLabelVals: Optional < [String] > = nil, 
            createdAt: Date, 
            createdBy: String, 
            durationInHours: Optional < Int > = nil, 
            id: Int, 
            negateLabelVals: Optional < [String] > = nil, 
            reason: String, 
            resolvedReports: [Com.Atproto.Admin.Defs.ReportView], 
            reversal: Optional < Com.Atproto.Admin.Defs.ActionReversal > = nil, 
            subject: Union4 < Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound > , 
            subjectBlobs: [Com.Atproto.Admin.Defs.BlobView]
        ) {
            self._action = .wrapped(action)
            self._createLabelVals = .wrapped(createLabelVals)
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._durationInHours = .wrapped(durationInHours)
            self._id = .wrapped(id)
            self._negateLabelVals = .wrapped(negateLabelVals)
            self._reason = .wrapped(reason)
            self._resolvedReports = .wrapped(resolvedReports)
            self._reversal = .wrapped(reversal)
            self._subject = .wrapped(subject)
            self._subjectBlobs = .wrapped(subjectBlobs)
        }
        public static let typeValue = "com.atproto.admin.defs#actionViewDetail"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct BlobView: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var createdAt: Date
        @Indirect
        public var details: Optional < Union2 < Com.Atproto.Admin.Defs.ImageDetails, Com.Atproto.Admin.Defs.VideoDetails > > 
        @Indirect
        public var mimeType: String
        @Indirect
        public var moderation: Optional < Com.Atproto.Admin.Defs.Moderation > 
        @Indirect
        public var size: Int
        public init(
            cid: String, 
            createdAt: Date, 
            details: Optional < Union2 < Com.Atproto.Admin.Defs.ImageDetails, Com.Atproto.Admin.Defs.VideoDetails > > = nil, 
            mimeType: String, 
            moderation: Optional < Com.Atproto.Admin.Defs.Moderation > = nil, 
            size: Int
        ) {
            self._cid = .wrapped(cid)
            self._createdAt = .wrapped(createdAt)
            self._details = .wrapped(details)
            self._mimeType = .wrapped(mimeType)
            self._moderation = .wrapped(moderation)
            self._size = .wrapped(size)
        }
        public static let typeValue = "com.atproto.admin.defs#blobView"
    }
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
    public struct ImageDetails: UnionCodable, Hashable {
        @Indirect
        public var height: Int
        @Indirect
        public var width: Int
        public init(
            height: Int, 
            width: Int
        ) {
            self._height = .wrapped(height)
            self._width = .wrapped(width)
        }
        public static let typeValue = "com.atproto.admin.defs#imageDetails"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct Moderation: UnionCodable, Hashable {
        @Indirect
        public var currentAction: Optional < Com.Atproto.Admin.Defs.ActionViewCurrent > 
        public init(
            currentAction: Optional < Com.Atproto.Admin.Defs.ActionViewCurrent > = nil
        ) {
            self._currentAction = .wrapped(currentAction)
        }
        public static let typeValue = "com.atproto.admin.defs#moderation"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct ModerationDetail: UnionCodable, Hashable {
        @Indirect
        public var actions: [Com.Atproto.Admin.Defs.ActionView]
        @Indirect
        public var currentAction: Optional < Com.Atproto.Admin.Defs.ActionViewCurrent > 
        @Indirect
        public var reports: [Com.Atproto.Admin.Defs.ReportView]
        public init(
            actions: [Com.Atproto.Admin.Defs.ActionView], 
            currentAction: Optional < Com.Atproto.Admin.Defs.ActionViewCurrent > = nil, 
            reports: [Com.Atproto.Admin.Defs.ReportView]
        ) {
            self._actions = .wrapped(actions)
            self._currentAction = .wrapped(currentAction)
            self._reports = .wrapped(reports)
        }
        public static let typeValue = "com.atproto.admin.defs#moderationDetail"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RecordView: UnionCodable, Hashable {
        @Indirect
        public var blobCids: [String]
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.Moderation
        @Indirect
        public var repo: Com.Atproto.Admin.Defs.RepoView
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: LexiconUnknownUnion
        public init(
            blobCids: [String], 
            cid: String, 
            indexedAt: Date, 
            moderation: Com.Atproto.Admin.Defs.Moderation, 
            repo: Com.Atproto.Admin.Defs.RepoView, 
            uri: ATURI, 
            value: LexiconUnknownUnion
        ) {
            self._blobCids = .wrapped(blobCids)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._moderation = .wrapped(moderation)
            self._repo = .wrapped(repo)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = "com.atproto.admin.defs#recordView"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RecordViewDetail: UnionCodable, Hashable {
        @Indirect
        public var blobs: [Com.Atproto.Admin.Defs.BlobView]
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.ModerationDetail
        @Indirect
        public var repo: Com.Atproto.Admin.Defs.RepoView
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: LexiconUnknownUnion
        public init(
            blobs: [Com.Atproto.Admin.Defs.BlobView], 
            cid: String, 
            indexedAt: Date, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            moderation: Com.Atproto.Admin.Defs.ModerationDetail, 
            repo: Com.Atproto.Admin.Defs.RepoView, 
            uri: ATURI, 
            value: LexiconUnknownUnion
        ) {
            self._blobs = .wrapped(blobs)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._moderation = .wrapped(moderation)
            self._repo = .wrapped(repo)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = "com.atproto.admin.defs#recordViewDetail"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RecordViewNotFound: UnionCodable, Hashable {
        @Indirect
        public var uri: ATURI
        public init(
            uri: ATURI
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "com.atproto.admin.defs#recordViewNotFound"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RepoRef: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = "com.atproto.admin.defs#repoRef"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RepoView: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var email: Optional < String > 
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var inviteNote: Optional < String > 
        @Indirect
        public var invitedBy: Optional < Com.Atproto.Server.Defs.InviteCode > 
        @Indirect
        public var invitesDisabled: Optional < Bool > 
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.Moderation
        @Indirect
        public var relatedRecords: [LexiconUnknownUnion]
        public init(
            did: String, 
            email: Optional < String > = nil, 
            handle: String, 
            indexedAt: Date, 
            inviteNote: Optional < String > = nil, 
            invitedBy: Optional < Com.Atproto.Server.Defs.InviteCode > = nil, 
            invitesDisabled: Optional < Bool > = nil, 
            moderation: Com.Atproto.Admin.Defs.Moderation, 
            relatedRecords: [LexiconUnknownUnion]
        ) {
            self._did = .wrapped(did)
            self._email = .wrapped(email)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._inviteNote = .wrapped(inviteNote)
            self._invitedBy = .wrapped(invitedBy)
            self._invitesDisabled = .wrapped(invitesDisabled)
            self._moderation = .wrapped(moderation)
            self._relatedRecords = .wrapped(relatedRecords)
        }
        public static let typeValue = "com.atproto.admin.defs#repoView"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RepoViewDetail: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var email: Optional < String > 
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var inviteNote: Optional < String > 
        @Indirect
        public var invitedBy: Optional < Com.Atproto.Server.Defs.InviteCode > 
        @Indirect
        public var invites: Optional < [Com.Atproto.Server.Defs.InviteCode] > 
        @Indirect
        public var invitesDisabled: Optional < Bool > 
        @Indirect
        public var labels: Optional < [Com.Atproto.Label.Defs.Label] > 
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.ModerationDetail
        @Indirect
        public var relatedRecords: [LexiconUnknownUnion]
        public init(
            did: String, 
            email: Optional < String > = nil, 
            handle: String, 
            indexedAt: Date, 
            inviteNote: Optional < String > = nil, 
            invitedBy: Optional < Com.Atproto.Server.Defs.InviteCode > = nil, 
            invites: Optional < [Com.Atproto.Server.Defs.InviteCode] > = nil, 
            invitesDisabled: Optional < Bool > = nil, 
            labels: Optional < [Com.Atproto.Label.Defs.Label] > = nil, 
            moderation: Com.Atproto.Admin.Defs.ModerationDetail, 
            relatedRecords: [LexiconUnknownUnion]
        ) {
            self._did = .wrapped(did)
            self._email = .wrapped(email)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._inviteNote = .wrapped(inviteNote)
            self._invitedBy = .wrapped(invitedBy)
            self._invites = .wrapped(invites)
            self._invitesDisabled = .wrapped(invitesDisabled)
            self._labels = .wrapped(labels)
            self._moderation = .wrapped(moderation)
            self._relatedRecords = .wrapped(relatedRecords)
        }
        public static let typeValue = "com.atproto.admin.defs#repoViewDetail"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct RepoViewNotFound: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = "com.atproto.admin.defs#repoViewNotFound"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct ReportView: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var id: Int
        @Indirect
        public var reason: Optional < String > 
        @Indirect
        public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
        @Indirect
        public var reportedBy: String
        @Indirect
        public var resolvedByActionIds: [Int]
        @Indirect
        public var subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
        @Indirect
        public var subjectRepoHandle: Optional < String > 
        public init(
            createdAt: Date, 
            id: Int, 
            reason: Optional < String > = nil, 
            reasonType: Com.Atproto.Moderation.Defs.ReasonType, 
            reportedBy: String, 
            resolvedByActionIds: [Int], 
            subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > , 
            subjectRepoHandle: Optional < String > = nil
        ) {
            self._createdAt = .wrapped(createdAt)
            self._id = .wrapped(id)
            self._reason = .wrapped(reason)
            self._reasonType = .wrapped(reasonType)
            self._reportedBy = .wrapped(reportedBy)
            self._resolvedByActionIds = .wrapped(resolvedByActionIds)
            self._subject = .wrapped(subject)
            self._subjectRepoHandle = .wrapped(subjectRepoHandle)
        }
        public static let typeValue = "com.atproto.admin.defs#reportView"
    }
}
public extension Com.Atproto.Admin.Defs {
    public struct ReportViewDetail: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var id: Int
        @Indirect
        public var reason: Optional < String > 
        @Indirect
        public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
        @Indirect
        public var reportedBy: String
        @Indirect
        public var resolvedByActions: [Com.Atproto.Admin.Defs.ActionView]
        @Indirect
        public var subject: Union4 < Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound > 
        public init(
            createdAt: Date, 
            id: Int, 
            reason: Optional < String > = nil, 
            reasonType: Com.Atproto.Moderation.Defs.ReasonType, 
            reportedBy: String, 
            resolvedByActions: [Com.Atproto.Admin.Defs.ActionView], 
            subject: Union4 < Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound > 
        ) {
            self._createdAt = .wrapped(createdAt)
            self._id = .wrapped(id)
            self._reason = .wrapped(reason)
            self._reasonType = .wrapped(reasonType)
            self._reportedBy = .wrapped(reportedBy)
            self._resolvedByActions = .wrapped(resolvedByActions)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = "com.atproto.admin.defs#reportViewDetail"
    }
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
    public struct VideoDetails: UnionCodable, Hashable {
        @Indirect
        public var height: Int
        @Indirect
        public var length: Int
        @Indirect
        public var width: Int
        public init(
            height: Int, 
            length: Int, 
            width: Int
        ) {
            self._height = .wrapped(height)
            self._length = .wrapped(length)
            self._width = .wrapped(width)
        }
        public static let typeValue = "com.atproto.admin.defs#videoDetails"
    }
}
public extension Com.Atproto.Admin {
    struct DisableAccountInvites: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var account: String
            @Indirect
            public var note: Optional < String > 
            public init(
                account: String, 
                note: Optional < String > = nil
            ) {
                self._account = .wrapped(account)
                self._note = .wrapped(note)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.disableAccountInvites"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct DisableInviteCodes: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var accounts: Optional < [String] > 
            @Indirect
            public var codes: Optional < [String] > 
            public init(
                accounts: Optional < [String] > = nil, 
                codes: Optional < [String] > = nil
            ) {
                self._accounts = .wrapped(accounts)
                self._codes = .wrapped(codes)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.disableInviteCodes"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct EnableAccountInvites: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var account: String
            @Indirect
            public var note: Optional < String > 
            public init(
                account: String, 
                note: Optional < String > = nil
            ) {
                self._account = .wrapped(account)
                self._note = .wrapped(note)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.enableAccountInvites"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct GetInviteCodes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var sort: Optional < String > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                sort: Optional < String > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._sort = .wrapped(sort)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: sort.toQueryItems(name: "sort"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var codes: [Com.Atproto.Server.Defs.InviteCode]
            @Indirect
            public var cursor: Optional < String > 
            public init(
                codes: [Com.Atproto.Server.Defs.InviteCode], 
                cursor: Optional < String > = nil
            ) {
                self._codes = .wrapped(codes)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getInviteCodes"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetModerationAction: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var id: Int
            public init(
                id: Int
            ) {
                self._id = .wrapped(id)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: id.toQueryItems(name: "id"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ActionViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getModerationAction"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetModerationActions: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var subject: Optional < String > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                subject: Optional < String > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._subject = .wrapped(subject)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: subject.toQueryItems(name: "subject"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actions: [Com.Atproto.Admin.Defs.ActionView]
            @Indirect
            public var cursor: Optional < String > 
            public init(
                actions: [Com.Atproto.Admin.Defs.ActionView], 
                cursor: Optional < String > = nil
            ) {
                self._actions = .wrapped(actions)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getModerationActions"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetModerationReport: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var id: Int
            public init(
                id: Int
            ) {
                self._id = .wrapped(id)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: id.toQueryItems(name: "id"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ReportViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getModerationReport"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetModerationReports: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actionType: Optional < String > 
            @Indirect
            public var actionedBy: Optional < String > 
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var ignoreSubjects: Optional < [String] > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var reporters: Optional < [String] > 
            @Indirect
            public var resolved: Optional < Bool > 
            @Indirect
            public var reverse: Optional < Bool > 
            @Indirect
            public var subject: Optional < String > 
            public init(
                actionType: Optional < String > = nil, 
                actionedBy: Optional < String > = nil, 
                cursor: Optional < String > = nil, 
                ignoreSubjects: Optional < [String] > = nil, 
                limit: Optional < Int > = nil, 
                reporters: Optional < [String] > = nil, 
                resolved: Optional < Bool > = nil, 
                reverse: Optional < Bool > = nil, 
                subject: Optional < String > = nil
            ) {
                self._actionType = .wrapped(actionType)
                self._actionedBy = .wrapped(actionedBy)
                self._cursor = .wrapped(cursor)
                self._ignoreSubjects = .wrapped(ignoreSubjects)
                self._limit = .wrapped(limit)
                self._reporters = .wrapped(reporters)
                self._resolved = .wrapped(resolved)
                self._reverse = .wrapped(reverse)
                self._subject = .wrapped(subject)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: actionType.toQueryItems(name: "actionType"))
                parameters.append(contentsOf: actionedBy.toQueryItems(name: "actionedBy"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: ignoreSubjects.toQueryItems(name: "ignoreSubjects"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: reporters.toQueryItems(name: "reporters"))
                parameters.append(contentsOf: resolved.toQueryItems(name: "resolved"))
                parameters.append(contentsOf: reverse.toQueryItems(name: "reverse"))
                parameters.append(contentsOf: subject.toQueryItems(name: "subject"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var reports: [Com.Atproto.Admin.Defs.ReportView]
            public init(
                cursor: Optional < String > = nil, 
                reports: [Com.Atproto.Admin.Defs.ReportView]
            ) {
                self._cursor = .wrapped(cursor)
                self._reports = .wrapped(reports)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getModerationReports"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetRecord: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var uri: ATURI
            public init(
                cid: Optional < String > = nil, 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.RecordViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getRecord"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetRepo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.RepoViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getRepo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct ResolveModerationReports: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var actionId: Int
            @Indirect
            public var createdBy: String
            @Indirect
            public var reportIds: [Int]
            public init(
                actionId: Int, 
                createdBy: String, 
                reportIds: [Int]
            ) {
                self._actionId = .wrapped(actionId)
                self._createdBy = .wrapped(createdBy)
                self._reportIds = .wrapped(reportIds)
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ActionView
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.resolveModerationReports"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct ReverseModerationAction: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var createdBy: String
            @Indirect
            public var id: Int
            @Indirect
            public var reason: String
            public init(
                createdBy: String, 
                id: Int, 
                reason: String
            ) {
                self._createdBy = .wrapped(createdBy)
                self._id = .wrapped(id)
                self._reason = .wrapped(reason)
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ActionView
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.reverseModerationAction"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct SearchRepos: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var invitedBy: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var term: Optional < String > 
            public init(
                cursor: Optional < String > = nil, 
                invitedBy: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                term: Optional < String > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._invitedBy = .wrapped(invitedBy)
                self._limit = .wrapped(limit)
                self._term = .wrapped(term)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: invitedBy.toQueryItems(name: "invitedBy"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: term.toQueryItems(name: "term"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var repos: [Com.Atproto.Admin.Defs.RepoView]
            public init(
                cursor: Optional < String > = nil, 
                repos: [Com.Atproto.Admin.Defs.RepoView]
            ) {
                self._cursor = .wrapped(cursor)
                self._repos = .wrapped(repos)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.searchRepos"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct SendEmail: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var content: String
            @Indirect
            public var recipientDid: String
            @Indirect
            public var subject: Optional < String > 
            public init(
                content: String, 
                recipientDid: String, 
                subject: Optional < String > = nil
            ) {
                self._content = .wrapped(content)
                self._recipientDid = .wrapped(recipientDid)
                self._subject = .wrapped(subject)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var sent: Bool
            public init(
                sent: Bool
            ) {
                self._sent = .wrapped(sent)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.sendEmail"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct TakeModerationAction: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var action: String
            @Indirect
            public var createLabelVals: Optional < [String] > 
            @Indirect
            public var createdBy: String
            @Indirect
            public var durationInHours: Optional < Int > 
            @Indirect
            public var negateLabelVals: Optional < [String] > 
            @Indirect
            public var reason: String
            @Indirect
            public var subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
            @Indirect
            public var subjectBlobCids: Optional < [String] > 
            public init(
                action: String, 
                createLabelVals: Optional < [String] > = nil, 
                createdBy: String, 
                durationInHours: Optional < Int > = nil, 
                negateLabelVals: Optional < [String] > = nil, 
                reason: String, 
                subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > , 
                subjectBlobCids: Optional < [String] > = nil
            ) {
                self._action = .wrapped(action)
                self._createLabelVals = .wrapped(createLabelVals)
                self._createdBy = .wrapped(createdBy)
                self._durationInHours = .wrapped(durationInHours)
                self._negateLabelVals = .wrapped(negateLabelVals)
                self._reason = .wrapped(reason)
                self._subject = .wrapped(subject)
                self._subjectBlobCids = .wrapped(subjectBlobCids)
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ActionView
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.takeModerationAction"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateAccountEmail: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var account: String
            @Indirect
            public var email: String
            public init(
                account: String, 
                email: String
            ) {
                self._account = .wrapped(account)
                self._email = .wrapped(email)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateAccountEmail"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateAccountHandle: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String
            @Indirect
            public var handle: String
            public init(
                did: String, 
                handle: String
            ) {
                self._did = .wrapped(did)
                self._handle = .wrapped(handle)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateAccountHandle"
        public let input: Input?
    }
}
public extension Com.Atproto.Identity {
    struct ResolveHandle: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var handle: String
            public init(
                handle: String
            ) {
                self._handle = .wrapped(handle)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: handle.toQueryItems(name: "handle"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.identity.resolveHandle"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Identity {
    struct UpdateHandle: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var handle: String
            public init(
                handle: String
            ) {
                self._handle = .wrapped(handle)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.identity.updateHandle"
        public let input: Input?
    }
}
public extension Com.Atproto.Label.Defs {
    public struct Label: UnionCodable, Hashable {
        @Indirect
        public var cid: Optional < String > 
        @Indirect
        public var cts: Date
        @Indirect
        public var neg: Optional < Bool > 
        @Indirect
        public var src: String
        @Indirect
        public var uri: SafeURL
        @Indirect
        public var val: String
        public init(
            cid: Optional < String > = nil, 
            cts: Date, 
            neg: Optional < Bool > = nil, 
            src: String, 
            uri: SafeURL, 
            val: String
        ) {
            self._cid = .wrapped(cid)
            self._cts = .wrapped(cts)
            self._neg = .wrapped(neg)
            self._src = .wrapped(src)
            self._uri = .wrapped(uri)
            self._val = .wrapped(val)
        }
        public static let typeValue = "com.atproto.label.defs#label"
    }
}
public extension Com.Atproto.Label.Defs {
    public struct SelfLabel: UnionCodable, Hashable {
        @Indirect
        public var val: String
        public init(
            val: String
        ) {
            self._val = .wrapped(val)
        }
        public static let typeValue = "com.atproto.label.defs#selfLabel"
    }
}
public extension Com.Atproto.Label.Defs {
    public struct SelfLabels: UnionCodable, Hashable {
        @Indirect
        public var values: [Com.Atproto.Label.Defs.SelfLabel]
        public init(
            values: [Com.Atproto.Label.Defs.SelfLabel]
        ) {
            self._values = .wrapped(values)
        }
        public static let typeValue = "com.atproto.label.defs#selfLabels"
    }
}
public extension Com.Atproto.Label {
    struct QueryLabels: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var sources: Optional < [String] > 
            @Indirect
            public var uriPatterns: [String]
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                sources: Optional < [String] > = nil, 
                uriPatterns: [String]
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._sources = .wrapped(sources)
                self._uriPatterns = .wrapped(uriPatterns)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: sources.toQueryItems(name: "sources"))
                parameters.append(contentsOf: uriPatterns.toQueryItems(name: "uriPatterns"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var labels: [Com.Atproto.Label.Defs.Label]
            public init(
                cursor: Optional < String > = nil, 
                labels: [Com.Atproto.Label.Defs.Label]
            ) {
                self._cursor = .wrapped(cursor)
                self._labels = .wrapped(labels)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.label.queryLabels"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Label.SubscribeLabels {
    public struct Info: UnionCodable, Hashable {
        @Indirect
        public var message: Optional < String > 
        @Indirect
        public var name: String
        public init(
            message: Optional < String > = nil, 
            name: String
        ) {
            self._message = .wrapped(message)
            self._name = .wrapped(name)
        }
        public static let typeValue = "com.atproto.label.subscribeLabels#info"
    }
}
public extension Com.Atproto.Label.SubscribeLabels {
    public struct Labels: UnionCodable, Hashable {
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]
        @Indirect
        public var seq: Int
        public init(
            labels: [Com.Atproto.Label.Defs.Label], 
            seq: Int
        ) {
            self._labels = .wrapped(labels)
            self._seq = .wrapped(seq)
        }
        public static let typeValue = "com.atproto.label.subscribeLabels#labels"
    }
}
public extension Com.Atproto.Label {
    enum SubscribeLabels {
    }
}
public extension Com.Atproto.Moderation {
    struct CreateReport: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var reason: Optional < String > 
            @Indirect
            public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
            @Indirect
            public var subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
            public init(
                reason: Optional < String > = nil, 
                reasonType: Com.Atproto.Moderation.Defs.ReasonType, 
                subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
            ) {
                self._reason = .wrapped(reason)
                self._reasonType = .wrapped(reasonType)
                self._subject = .wrapped(subject)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var createdAt: Date
            @Indirect
            public var id: Int
            @Indirect
            public var reason: Optional < String > 
            @Indirect
            public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
            @Indirect
            public var reportedBy: String
            @Indirect
            public var subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
            public init(
                createdAt: Date, 
                id: Int, 
                reason: Optional < String > = nil, 
                reasonType: Com.Atproto.Moderation.Defs.ReasonType, 
                reportedBy: String, 
                subject: Union2 < Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef > 
            ) {
                self._createdAt = .wrapped(createdAt)
                self._id = .wrapped(id)
                self._reason = .wrapped(reason)
                self._reasonType = .wrapped(reasonType)
                self._reportedBy = .wrapped(reportedBy)
                self._subject = .wrapped(subject)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.moderation.createReport"
        public let input: Input?
    }
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
    typealias ReasonType = String
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Repo.ApplyWrites {
    public struct Create: UnionCodable, Hashable {
        @Indirect
        public var collection: String
        @Indirect
        public var rkey: Optional < String > 
        @Indirect
        public var value: LexiconUnknownUnion
        public init(
            collection: String, 
            rkey: Optional < String > = nil, 
            value: LexiconUnknownUnion
        ) {
            self._collection = .wrapped(collection)
            self._rkey = .wrapped(rkey)
            self._value = .wrapped(value)
        }
        public static let typeValue = "com.atproto.repo.applyWrites#create"
    }
}
public extension Com.Atproto.Repo.ApplyWrites {
    public struct Delete: UnionCodable, Hashable {
        @Indirect
        public var collection: String
        @Indirect
        public var rkey: String
        public init(
            collection: String, 
            rkey: String
        ) {
            self._collection = .wrapped(collection)
            self._rkey = .wrapped(rkey)
        }
        public static let typeValue = "com.atproto.repo.applyWrites#delete"
    }
}
public extension Com.Atproto.Repo {
    struct ApplyWrites: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var repo: String
            @Indirect
            public var swapCommit: Optional < String > 
            @Indirect
            public var validate: Optional < Bool > 
            @Indirect
            public var writes: [Union3 < Com.Atproto.Repo.ApplyWrites.Create, Com.Atproto.Repo.ApplyWrites.Update, Com.Atproto.Repo.ApplyWrites.Delete > ]
            public init(
                repo: String, 
                swapCommit: Optional < String > = nil, 
                validate: Optional < Bool > = nil, 
                writes: [Union3 < Com.Atproto.Repo.ApplyWrites.Create, Com.Atproto.Repo.ApplyWrites.Update, Com.Atproto.Repo.ApplyWrites.Delete > ]
            ) {
                self._repo = .wrapped(repo)
                self._swapCommit = .wrapped(swapCommit)
                self._validate = .wrapped(validate)
                self._writes = .wrapped(writes)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.applyWrites"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo.ApplyWrites {
    public struct Update: UnionCodable, Hashable {
        @Indirect
        public var collection: String
        @Indirect
        public var rkey: String
        @Indirect
        public var value: LexiconUnknownUnion
        public init(
            collection: String, 
            rkey: String, 
            value: LexiconUnknownUnion
        ) {
            self._collection = .wrapped(collection)
            self._rkey = .wrapped(rkey)
            self._value = .wrapped(value)
        }
        public static let typeValue = "com.atproto.repo.applyWrites#update"
    }
}
public extension Com.Atproto.Repo {
    struct CreateRecord: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var collection: String
            @Indirect
            public var record: LexiconUnknownUnion
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: Optional < String > 
            @Indirect
            public var swapCommit: Optional < String > 
            @Indirect
            public var validate: Optional < Bool > 
            public init(
                collection: String, 
                record: LexiconUnknownUnion, 
                repo: String, 
                rkey: Optional < String > = nil, 
                swapCommit: Optional < String > = nil, 
                validate: Optional < Bool > = nil
            ) {
                self._collection = .wrapped(collection)
                self._record = .wrapped(record)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
                self._swapCommit = .wrapped(swapCommit)
                self._validate = .wrapped(validate)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String
            @Indirect
            public var uri: ATURI
            public init(
                cid: String, 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.createRecord"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo {
    struct DeleteRecord: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var collection: String
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String
            @Indirect
            public var swapCommit: Optional < String > 
            @Indirect
            public var swapRecord: Optional < String > 
            public init(
                collection: String, 
                repo: String, 
                rkey: String, 
                swapCommit: Optional < String > = nil, 
                swapRecord: Optional < String > = nil
            ) {
                self._collection = .wrapped(collection)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
                self._swapCommit = .wrapped(swapCommit)
                self._swapRecord = .wrapped(swapRecord)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.deleteRecord"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo {
    struct DescribeRepo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var repo: String
            public init(
                repo: String
            ) {
                self._repo = .wrapped(repo)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: repo.toQueryItems(name: "repo"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var collections: [String]
            @Indirect
            public var did: String
            @Indirect
            public var didDoc: LexiconUnknownUnion
            @Indirect
            public var handle: String
            @Indirect
            public var handleIsCorrect: Bool
            public init(
                collections: [String], 
                did: String, 
                didDoc: LexiconUnknownUnion, 
                handle: String, 
                handleIsCorrect: Bool
            ) {
                self._collections = .wrapped(collections)
                self._did = .wrapped(did)
                self._didDoc = .wrapped(didDoc)
                self._handle = .wrapped(handle)
                self._handleIsCorrect = .wrapped(handleIsCorrect)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.describeRepo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo {
    struct GetRecord: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var collection: String
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String
            public init(
                cid: Optional < String > = nil, 
                collection: String, 
                repo: String, 
                rkey: String
            ) {
                self._cid = .wrapped(cid)
                self._collection = .wrapped(collection)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: collection.toQueryItems(name: "collection"))
                parameters.append(contentsOf: repo.toQueryItems(name: "repo"))
                parameters.append(contentsOf: rkey.toQueryItems(name: "rkey"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: Optional < String > 
            @Indirect
            public var uri: ATURI
            @Indirect
            public var value: LexiconUnknownUnion
            public init(
                cid: Optional < String > = nil, 
                uri: ATURI, 
                value: LexiconUnknownUnion
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
                self._value = .wrapped(value)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.getRecord"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo {
    struct ListRecords: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var collection: String
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var repo: String
            @Indirect
            public var reverse: Optional < Bool > 
            @Indirect
            public var rkeyEnd: Optional < String > 
            @Indirect
            public var rkeyStart: Optional < String > 
            public init(
                collection: String, 
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil, 
                repo: String, 
                reverse: Optional < Bool > = nil, 
                rkeyEnd: Optional < String > = nil, 
                rkeyStart: Optional < String > = nil
            ) {
                self._collection = .wrapped(collection)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._repo = .wrapped(repo)
                self._reverse = .wrapped(reverse)
                self._rkeyEnd = .wrapped(rkeyEnd)
                self._rkeyStart = .wrapped(rkeyStart)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: collection.toQueryItems(name: "collection"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: repo.toQueryItems(name: "repo"))
                parameters.append(contentsOf: reverse.toQueryItems(name: "reverse"))
                parameters.append(contentsOf: rkeyEnd.toQueryItems(name: "rkeyEnd"))
                parameters.append(contentsOf: rkeyStart.toQueryItems(name: "rkeyStart"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var records: [Com.Atproto.Repo.ListRecords.Record]
            public init(
                cursor: Optional < String > = nil, 
                records: [Com.Atproto.Repo.ListRecords.Record]
            ) {
                self._cursor = .wrapped(cursor)
                self._records = .wrapped(records)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.listRecords"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo.ListRecords {
    public struct Record: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: LexiconUnknownUnion
        public init(
            cid: String, 
            uri: ATURI, 
            value: LexiconUnknownUnion
        ) {
            self._cid = .wrapped(cid)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = "com.atproto.repo.listRecords#record"
    }
}
public extension Com.Atproto.Repo {
    struct PutRecord: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var collection: String
            @Indirect
            public var record: LexiconUnknownUnion
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String
            @Indirect
            public var swapCommit: Optional < String > 
            @Indirect
            public var swapRecord: Optional < String > 
            @Indirect
            public var validate: Optional < Bool > 
            public init(
                collection: String, 
                record: LexiconUnknownUnion, 
                repo: String, 
                rkey: String, 
                swapCommit: Optional < String > = nil, 
                swapRecord: Optional < String > = nil, 
                validate: Optional < Bool > = nil
            ) {
                self._collection = .wrapped(collection)
                self._record = .wrapped(record)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
                self._swapCommit = .wrapped(swapCommit)
                self._swapRecord = .wrapped(swapRecord)
                self._validate = .wrapped(validate)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String
            @Indirect
            public var uri: ATURI
            public init(
                cid: String, 
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.putRecord"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo {
    public struct StrongRef: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var uri: ATURI
        public init(
            cid: String, 
            uri: ATURI
        ) {
            self._cid = .wrapped(cid)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = "com.atproto.repo.strongRef"
    }
}
public extension Com.Atproto.Repo {
    struct UploadBlob: XRPCRequest {
        public struct Output: Decodable, Hashable {
            public init(
            
            ) {
            
            }
        }
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.uploadBlob"
    }
}
public extension Com.Atproto.Server {
    struct CreateAccount: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: Optional < String > 
            @Indirect
            public var email: String
            @Indirect
            public var handle: String
            @Indirect
            public var inviteCode: Optional < String > 
            @Indirect
            public var password: String
            @Indirect
            public var recoveryKey: Optional < String > 
            public init(
                did: Optional < String > = nil, 
                email: String, 
                handle: String, 
                inviteCode: Optional < String > = nil, 
                password: String, 
                recoveryKey: Optional < String > = nil
            ) {
                self._did = .wrapped(did)
                self._email = .wrapped(email)
                self._handle = .wrapped(handle)
                self._inviteCode = .wrapped(inviteCode)
                self._password = .wrapped(password)
                self._recoveryKey = .wrapped(recoveryKey)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var accessJwt: String
            @Indirect
            public var did: String
            @Indirect
            public var handle: String
            @Indirect
            public var refreshJwt: String
            public init(
                accessJwt: String, 
                did: String, 
                handle: String, 
                refreshJwt: String
            ) {
                self._accessJwt = .wrapped(accessJwt)
                self._did = .wrapped(did)
                self._handle = .wrapped(handle)
                self._refreshJwt = .wrapped(refreshJwt)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createAccount"
        public let input: Input?
    }
}
public extension Com.Atproto.Server.CreateAppPassword {
    public struct AppPassword: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var name: String
        @Indirect
        public var password: String
        public init(
            createdAt: Date, 
            name: String, 
            password: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._name = .wrapped(name)
            self._password = .wrapped(password)
        }
        public static let typeValue = "com.atproto.server.createAppPassword#appPassword"
    }
}
public extension Com.Atproto.Server {
    struct CreateAppPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var name: String
            public init(
                name: String
            ) {
                self._name = .wrapped(name)
            }
        }
        public typealias Output = Com.Atproto.Server.CreateAppPassword.AppPassword
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createAppPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct CreateInviteCode: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var forAccount: Optional < String > 
            @Indirect
            public var useCount: Int
            public init(
                forAccount: Optional < String > = nil, 
                useCount: Int
            ) {
                self._forAccount = .wrapped(forAccount)
                self._useCount = .wrapped(useCount)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var code: String
            public init(
                code: String
            ) {
                self._code = .wrapped(code)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createInviteCode"
        public let input: Input?
    }
}
public extension Com.Atproto.Server.CreateInviteCodes {
    public struct AccountCodes: UnionCodable, Hashable {
        @Indirect
        public var account: String
        @Indirect
        public var codes: [String]
        public init(
            account: String, 
            codes: [String]
        ) {
            self._account = .wrapped(account)
            self._codes = .wrapped(codes)
        }
        public static let typeValue = "com.atproto.server.createInviteCodes#accountCodes"
    }
}
public extension Com.Atproto.Server {
    struct CreateInviteCodes: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var codeCount: Int
            @Indirect
            public var forAccounts: Optional < [String] > 
            @Indirect
            public var useCount: Int
            public init(
                codeCount: Int, 
                forAccounts: Optional < [String] > = nil, 
                useCount: Int
            ) {
                self._codeCount = .wrapped(codeCount)
                self._forAccounts = .wrapped(forAccounts)
                self._useCount = .wrapped(useCount)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var codes: [Com.Atproto.Server.CreateInviteCodes.AccountCodes]
            public init(
                codes: [Com.Atproto.Server.CreateInviteCodes.AccountCodes]
            ) {
                self._codes = .wrapped(codes)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createInviteCodes"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct CreateSession: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var identifier: String
            @Indirect
            public var password: String
            public init(
                identifier: String, 
                password: String
            ) {
                self._identifier = .wrapped(identifier)
                self._password = .wrapped(password)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var accessJwt: String
            @Indirect
            public var did: String
            @Indirect
            public var email: Optional < String > 
            @Indirect
            public var handle: String
            @Indirect
            public var refreshJwt: String
            public init(
                accessJwt: String, 
                did: String, 
                email: Optional < String > = nil, 
                handle: String, 
                refreshJwt: String
            ) {
                self._accessJwt = .wrapped(accessJwt)
                self._did = .wrapped(did)
                self._email = .wrapped(email)
                self._handle = .wrapped(handle)
                self._refreshJwt = .wrapped(refreshJwt)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createSession"
        public let input: Input?
    }
}
public extension Com.Atproto.Server.Defs {
    public struct InviteCode: UnionCodable, Hashable {
        @Indirect
        public var available: Int
        @Indirect
        public var code: String
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var disabled: Bool
        @Indirect
        public var forAccount: String
        @Indirect
        public var uses: [Com.Atproto.Server.Defs.InviteCodeUse]
        public init(
            available: Int, 
            code: String, 
            createdAt: Date, 
            createdBy: String, 
            disabled: Bool, 
            forAccount: String, 
            uses: [Com.Atproto.Server.Defs.InviteCodeUse]
        ) {
            self._available = .wrapped(available)
            self._code = .wrapped(code)
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._disabled = .wrapped(disabled)
            self._forAccount = .wrapped(forAccount)
            self._uses = .wrapped(uses)
        }
        public static let typeValue = "com.atproto.server.defs#inviteCode"
    }
}
public extension Com.Atproto.Server.Defs {
    public struct InviteCodeUse: UnionCodable, Hashable {
        @Indirect
        public var usedAt: Date
        @Indirect
        public var usedBy: String
        public init(
            usedAt: Date, 
            usedBy: String
        ) {
            self._usedAt = .wrapped(usedAt)
            self._usedBy = .wrapped(usedBy)
        }
        public static let typeValue = "com.atproto.server.defs#inviteCodeUse"
    }
}
public extension Com.Atproto.Server {
    struct DeleteAccount: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String
            @Indirect
            public var password: String
            @Indirect
            public var token: String
            public init(
                did: String, 
                password: String, 
                token: String
            ) {
                self._did = .wrapped(did)
                self._password = .wrapped(password)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.deleteAccount"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct DeleteSession: XRPCRequest {
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.deleteSession"
    }
}
public extension Com.Atproto.Server.DescribeServer {
    public struct Links: UnionCodable, Hashable {
        @Indirect
        public var privacyPolicy: Optional < String > 
        @Indirect
        public var termsOfService: Optional < String > 
        public init(
            privacyPolicy: Optional < String > = nil, 
            termsOfService: Optional < String > = nil
        ) {
            self._privacyPolicy = .wrapped(privacyPolicy)
            self._termsOfService = .wrapped(termsOfService)
        }
        public static let typeValue = "com.atproto.server.describeServer#links"
    }
}
public extension Com.Atproto.Server {
    struct DescribeServer: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var availableUserDomains: [String]
            @Indirect
            public var inviteCodeRequired: Optional < Bool > 
            @Indirect
            public var links: Optional < Com.Atproto.Server.DescribeServer.Links > 
            public init(
                availableUserDomains: [String], 
                inviteCodeRequired: Optional < Bool > = nil, 
                links: Optional < Com.Atproto.Server.DescribeServer.Links > = nil
            ) {
                self._availableUserDomains = .wrapped(availableUserDomains)
                self._inviteCodeRequired = .wrapped(inviteCodeRequired)
                self._links = .wrapped(links)
            }
        }
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.describeServer"
    }
}
public extension Com.Atproto.Server {
    struct GetAccountInviteCodes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var createAvailable: Optional < Bool > 
            @Indirect
            public var includeUsed: Optional < Bool > 
            public init(
                createAvailable: Optional < Bool > = nil, 
                includeUsed: Optional < Bool > = nil
            ) {
                self._createAvailable = .wrapped(createAvailable)
                self._includeUsed = .wrapped(includeUsed)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: createAvailable.toQueryItems(name: "createAvailable"))
                parameters.append(contentsOf: includeUsed.toQueryItems(name: "includeUsed"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var codes: [Com.Atproto.Server.Defs.InviteCode]
            public init(
                codes: [Com.Atproto.Server.Defs.InviteCode]
            ) {
                self._codes = .wrapped(codes)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.getAccountInviteCodes"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Server {
    struct GetSession: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var did: String
            @Indirect
            public var email: Optional < String > 
            @Indirect
            public var handle: String
            public init(
                did: String, 
                email: Optional < String > = nil, 
                handle: String
            ) {
                self._did = .wrapped(did)
                self._email = .wrapped(email)
                self._handle = .wrapped(handle)
            }
        }
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.getSession"
    }
}
public extension Com.Atproto.Server.ListAppPasswords {
    public struct AppPassword: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var name: String
        public init(
            createdAt: Date, 
            name: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._name = .wrapped(name)
        }
        public static let typeValue = "com.atproto.server.listAppPasswords#appPassword"
    }
}
public extension Com.Atproto.Server {
    struct ListAppPasswords: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var passwords: [Com.Atproto.Server.ListAppPasswords.AppPassword]
            public init(
                passwords: [Com.Atproto.Server.ListAppPasswords.AppPassword]
            ) {
                self._passwords = .wrapped(passwords)
            }
        }
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.listAppPasswords"
    }
}
public extension Com.Atproto.Server {
    struct RefreshSession: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var accessJwt: String
            @Indirect
            public var did: String
            @Indirect
            public var handle: String
            @Indirect
            public var refreshJwt: String
            public init(
                accessJwt: String, 
                did: String, 
                handle: String, 
                refreshJwt: String
            ) {
                self._accessJwt = .wrapped(accessJwt)
                self._did = .wrapped(did)
                self._handle = .wrapped(handle)
                self._refreshJwt = .wrapped(refreshJwt)
            }
        }
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.refreshSession"
    }
}
public extension Com.Atproto.Server {
    struct RequestAccountDelete: XRPCRequest {
        public init(
        
        ) {
        
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.requestAccountDelete"
    }
}
public extension Com.Atproto.Server {
    struct RequestPasswordReset: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var email: String
            public init(
                email: String
            ) {
                self._email = .wrapped(email)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.requestPasswordReset"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct ResetPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var password: String
            @Indirect
            public var token: String
            public init(
                password: String, 
                token: String
            ) {
                self._password = .wrapped(password)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.resetPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct RevokeAppPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var name: String
            public init(
                name: String
            ) {
                self._name = .wrapped(name)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.revokeAppPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Sync {
    struct GetBlob: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: String
            @Indirect
            public var did: String
            public init(
                cid: String, 
                did: String
            ) {
                self._cid = .wrapped(cid)
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getBlob"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetBlocks: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cids: [String]
            @Indirect
            public var did: String
            public init(
                cids: [String], 
                did: String
            ) {
                self._cids = .wrapped(cids)
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cids.toQueryItems(name: "cids"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getBlocks"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetCheckout: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getCheckout"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetHead: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var root: String
            public init(
                root: String
            ) {
                self._root = .wrapped(root)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getHead"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetLatestCommit: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String
            @Indirect
            public var rev: String
            public init(
                cid: String, 
                rev: String
            ) {
                self._cid = .wrapped(cid)
                self._rev = .wrapped(rev)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getLatestCommit"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetRecord: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var collection: String
            @Indirect
            public var commit: Optional < String > 
            @Indirect
            public var did: String
            @Indirect
            public var rkey: String
            public init(
                collection: String, 
                commit: Optional < String > = nil, 
                did: String, 
                rkey: String
            ) {
                self._collection = .wrapped(collection)
                self._commit = .wrapped(commit)
                self._did = .wrapped(did)
                self._rkey = .wrapped(rkey)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: collection.toQueryItems(name: "collection"))
                parameters.append(contentsOf: commit.toQueryItems(name: "commit"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: rkey.toQueryItems(name: "rkey"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getRecord"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetRepo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            @Indirect
            public var since: Optional < String > 
            public init(
                did: String, 
                since: Optional < String > = nil
            ) {
                self._did = .wrapped(did)
                self._since = .wrapped(since)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: since.toQueryItems(name: "since"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getRepo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct ListBlobs: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var did: String
            @Indirect
            public var limit: Optional < Int > 
            @Indirect
            public var since: Optional < String > 
            public init(
                cursor: Optional < String > = nil, 
                did: String, 
                limit: Optional < Int > = nil, 
                since: Optional < String > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._did = .wrapped(did)
                self._limit = .wrapped(limit)
                self._since = .wrapped(since)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: since.toQueryItems(name: "since"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cids: [String]
            @Indirect
            public var cursor: Optional < String > 
            public init(
                cids: [String], 
                cursor: Optional < String > = nil
            ) {
                self._cids = .wrapped(cids)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.listBlobs"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct ListRepos: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var limit: Optional < Int > 
            public init(
                cursor: Optional < String > = nil, 
                limit: Optional < Int > = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem]()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: Optional < String > 
            @Indirect
            public var repos: [Com.Atproto.Sync.ListRepos.Repo]
            public init(
                cursor: Optional < String > = nil, 
                repos: [Com.Atproto.Sync.ListRepos.Repo]
            ) {
                self._cursor = .wrapped(cursor)
                self._repos = .wrapped(repos)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.listRepos"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync.ListRepos {
    public struct Repo: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var head: String
        public init(
            did: String, 
            head: String
        ) {
            self._did = .wrapped(did)
            self._head = .wrapped(head)
        }
        public static let typeValue = "com.atproto.sync.listRepos#repo"
    }
}
public extension Com.Atproto.Sync {
    struct NotifyOfUpdate: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var hostname: String
            public init(
                hostname: String
            ) {
                self._hostname = .wrapped(hostname)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.sync.notifyOfUpdate"
        public let input: Input?
    }
}
public extension Com.Atproto.Sync {
    struct RequestCrawl: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var hostname: String
            public init(
                hostname: String
            ) {
                self._hostname = .wrapped(hostname)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.sync.requestCrawl"
        public let input: Input?
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    public struct Commit: UnionCodable, Hashable {
        @Indirect
        public var ops: [Com.Atproto.Sync.SubscribeRepos.RepoOp]
        @Indirect
        public var rebase: Bool
        @Indirect
        public var repo: String
        @Indirect
        public var rev: String
        @Indirect
        public var seq: Int
        @Indirect
        public var since: String
        @Indirect
        public var time: Date
        @Indirect
        public var tooBig: Bool
        public init(
            ops: [Com.Atproto.Sync.SubscribeRepos.RepoOp], 
            rebase: Bool, 
            repo: String, 
            rev: String, 
            seq: Int, 
            since: String, 
            time: Date, 
            tooBig: Bool
        ) {
            self._ops = .wrapped(ops)
            self._rebase = .wrapped(rebase)
            self._repo = .wrapped(repo)
            self._rev = .wrapped(rev)
            self._seq = .wrapped(seq)
            self._since = .wrapped(since)
            self._time = .wrapped(time)
            self._tooBig = .wrapped(tooBig)
        }
        public static let typeValue = "com.atproto.sync.subscribeRepos#commit"
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    public struct Handle: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var handle: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String, 
            handle: String, 
            seq: Int, 
            time: Date
        ) {
            self._did = .wrapped(did)
            self._handle = .wrapped(handle)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = "com.atproto.sync.subscribeRepos#handle"
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    public struct Info: UnionCodable, Hashable {
        @Indirect
        public var message: Optional < String > 
        @Indirect
        public var name: String
        public init(
            message: Optional < String > = nil, 
            name: String
        ) {
            self._message = .wrapped(message)
            self._name = .wrapped(name)
        }
        public static let typeValue = "com.atproto.sync.subscribeRepos#info"
    }
}
public extension Com.Atproto.Sync {
    enum SubscribeRepos {
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    public struct Migrate: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var migrateTo: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String, 
            migrateTo: String, 
            seq: Int, 
            time: Date
        ) {
            self._did = .wrapped(did)
            self._migrateTo = .wrapped(migrateTo)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = "com.atproto.sync.subscribeRepos#migrate"
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    public struct RepoOp: UnionCodable, Hashable {
        @Indirect
        public var action: String
        @Indirect
        public var path: String
        public init(
            action: String, 
            path: String
        ) {
            self._action = .wrapped(action)
            self._path = .wrapped(path)
        }
        public static let typeValue = "com.atproto.sync.subscribeRepos#repoOp"
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    public struct Tombstone: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String, 
            seq: Int, 
            time: Date
        ) {
            self._did = .wrapped(did)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = "com.atproto.sync.subscribeRepos#tombstone"
    }
}