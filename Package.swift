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
    ],
    targets: [
        .target(
            name: "ATProto",
            dependencies: [
                "ATProtoAPI",
                "ATProtoXRPC",
            ]
        ),
        .target(
            name: "ATProtoAPI",
            dependencies: [
                "ATProtoXRPC"
            ]
        ),
        .target(
            name: "ATProtoXRPC",
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
    ]
)
