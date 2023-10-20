// swift-tools-version: 5.9

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "swift-atproto",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
    ],
    products: [
        .library(
            name: "ATProto",
            targets: ["ATProto"]
        ),
        .library(
            name: "ATProtoAPI",
            targets: ["ATProtoAPI"]
        ),
        .library(
            name: "ATProtoXRPC",
            targets: ["ATProtoXRPC"]
        ),
        .library(
            name: "ATProtoCore",
            targets: ["ATProtoCore"]
        ),
        .library(
            name: "ATProtoMacro",
            targets: ["ATProtoMacro"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-parsing.git", from: "0.13.0"),
        .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0"),
    ],
    targets: [
        .target(
            name: "ATProto",
            dependencies: [
                "ATProtoAPI",
                "ATProtoXRPC",
                "ATProtoCore",
            ]
        ),
        .target(
            name: "ATProtoAPI",
            dependencies: [
                "ATProtoXRPC",
                "ATProtoCore",
            ]
        ),
        .target(
            name: "ATProtoXRPC",
            dependencies: [
                .target(name: "ATProtoCore"),
                .product(name: "Parsing", package: "swift-parsing"),
            ],
            exclude: [
                "Entities/Union.swift.gyb"
            ]
        ),
        .testTarget(
            name: "ATProtoXRPCTests",
            dependencies: [
                "ATProtoXRPC"
            ]
        ),
        .target(
            name: "ATProtoCore",
            dependencies: [
                .product(name: "OrderedCollections", package: "swift-collections"),
            ]
        ),
        .testTarget(
            name: "ATProtoCoreTests",
            dependencies: [
                "ATProtoCore"
            ]
        ),
        .target(
            name: "ATProtoMacro",
            dependencies: [
                "ATProtoMacroPlugin"
            ]
        ),
        .macro(
            name: "ATProtoMacroPlugin",
            dependencies: [
                "ATProtoCore",
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
            ]
        ),
        .testTarget(
            name: "ATProtoMacroPluginTests",
            dependencies: [
                "ATProtoMacroPlugin",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
            ]
        ),
    ]
)
