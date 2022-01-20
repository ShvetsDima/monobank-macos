// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Authentication",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(name: "Authentication", targets: ["Authentication"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.33.1"),
        .package(path: "../Core"),
        .package(path: "../UIComponents")
    ],
    targets: [
        .target(name: "Authentication", dependencies: []),
        .testTarget(name: "AuthenticationTests", dependencies: ["Authentication"])
    ]
)
