// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Statement",
    products: [
        .library(name: "Statement", targets: ["Statement"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Statement", dependencies: []),
        .testTarget(name: "StatementTests", dependencies: ["Statement"])
    ]
)
