// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIComponents",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "UIComponents", targets: ["UIComponents"])
    ],
    dependencies: [
        .package(path: "../Resources")
    ],
    targets: [
        .target(name: "UIComponents", dependencies: ["Resources"]),
        .testTarget(name: "UIComponentsTests", dependencies: ["UIComponents"])
    ]
)
