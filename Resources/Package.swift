// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let fontLicensePath = "Fonts/License.txt"
let fontPath = "Fonts/Inter"

let stringsPath = "Strings"

let scriptsPath = "Scripts"
let templatesPath = "Templates"

let package = Package(
    name: "Resources",
    defaultLocalization: LanguageTag("uk"),
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(name: "Resources", targets: ["Resources"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGen", from: "6.5.1")
    ],
    targets: [
        .target(name: "Resources",
                dependencies: [],
                exclude: [fontLicensePath, scriptsPath, templatesPath],
                resources: [.process(fontPath), .process(stringsPath)]),
        .testTarget(name: "ResourcesTests", dependencies: ["Resources"])
    ]
)
