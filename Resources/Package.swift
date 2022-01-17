// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let fontLicensePath = "Fonts/License.txt"
let fontPath = "Fonts/Inter"

let sriptsPath = "Scripts"
let templatesPath = "Templates"

let package = Package(
    name: "Resources",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Resources", targets: ["Resources"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGen", from: "6.5.1"),
    ],
    targets: [
        .target(name: "Resources",
                dependencies: [],
                exclude: [fontLicensePath, sriptsPath, templatesPath],
                resources: [.process(fontPath)]),
        .testTarget(name: "ResourcesTests", dependencies: ["Resources"])
    ]
)
