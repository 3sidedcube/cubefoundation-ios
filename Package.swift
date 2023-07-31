// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CubeFoundation",
    platforms: [
        .iOS(.v16),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "CubeFoundation",
            targets: ["CubeFoundation"]
        ),
        .library(
            name: "CubeFoundationSwiftUI",
            targets: ["CubeFoundationSwiftUI"]
        )
    ],
    targets: [
        .target(
            name: "CubeFoundation",
            dependencies: []
        ),
        .target(
            name: "CubeFoundationSwiftUI",
            dependencies: []
        )
    ]
)
