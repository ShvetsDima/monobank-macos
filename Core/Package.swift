// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let templatePath = "Templates/AutoUseCaseProvider.stencil"

let package = Package(
    name: "Core",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(name: "Core", targets: ["Core"])
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya", from: "15.0.0"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess", from: "4.2.2"),
        .package(url: "https://github.com/krzysztofzablocki/Sourcery", from: "1.6.1")
    ],
    targets: [
        .target(name: "Core",
                dependencies: ["KeychainAccess",
                               .product(name: "Moya", package: "Moya")],
                exclude: [templatePath]),
        .testTarget(name: "CoreTests", dependencies: ["Core"])
    ]
)
