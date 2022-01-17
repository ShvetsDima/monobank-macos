// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Umbrella",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(name: "Umbrella", targets: ["Umbrella"])
    ],
    dependencies: [
        .package(path: "../Resources"),
        .package(path: "../Authentication")
    ],
    targets: [
        .target(name: "Umbrella", dependencies: ["Authentication", "Resources"]),
        .testTarget(name: "UmbrellaTests", dependencies: ["Umbrella"])
    ]
)
