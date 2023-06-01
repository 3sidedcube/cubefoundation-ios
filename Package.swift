// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CubeFoundation",
    platforms: [
        .iOS(.v15),
        .macOS(.v10_15)
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
