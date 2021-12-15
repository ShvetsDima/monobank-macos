// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "User",
    products: [
        .library(name: "User", targets: ["User"])
    ],
    dependencies: [],
    targets: [
        .target(name: "User", dependencies: []),
        .testTarget(name: "UserTests", dependencies: ["User"])
    ]
)
