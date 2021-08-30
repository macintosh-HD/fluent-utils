// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "fluent-utils",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "FluentUtils",
            targets: ["FluentUtils"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent-kit.git", from: "1.12.0"),
    ],
    targets: [
        .target(
            name: "FluentUtils",
            dependencies: [
                .product(name: "FluentKit", package: "fluent-kit")
            ]),
        .testTarget(
            name: "FluentUtilsTests",
            dependencies: ["FluentUtils"]),
    ]
)
