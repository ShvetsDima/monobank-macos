// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Umbrella",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Umbrella", targets: ["Umbrella"])
    ],
    dependencies: [
        .package(path: "../Authentication")
    ],
    targets: [
        .target(name: "Umbrella", dependencies: ["Authentication"]),
        .testTarget(name: "UmbrellaTests", dependencies: ["Umbrella"])
    ]
)
