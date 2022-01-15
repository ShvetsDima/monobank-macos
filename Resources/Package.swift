// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Resources",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Resources", targets: ["Resources"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Resources", dependencies: []),
        .testTarget(name: "ResourcesTests", dependencies: ["Resources"])
    ]
)
