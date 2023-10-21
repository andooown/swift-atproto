// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "Tools",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/andooown/lexicon-gen.git", revision: "0.0.7"),
    ],
    targets: [
        .target(name: "Tools", path: "")
    ]
)
