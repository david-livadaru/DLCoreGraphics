// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DLCoreGraphics",
    products: [
        .library(
            name: "DLCoreGraphics",
            targets: ["DLCoreGraphics"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DLCoreGraphics",
            dependencies: []),
        .testTarget(
            name: "DLCoreGraphicsTests",
            dependencies: ["DLCoreGraphics"]),
    ]
)
