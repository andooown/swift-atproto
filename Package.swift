// swift-tools-version: 5.8

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
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-parsing.git", from: "0.13.0"),
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
            name: "ATProtoCore"
        ),
        .testTarget(
            name: "ATProtoCoreTests",
            dependencies: [
                "ATProtoCore"
            ]
        ),
    ]
)
