// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DLCoreGraphics",
    products: [
        .library(
            name: "DLCoreGraphics",
            targets: ["DLCoreGraphics"])
    ],
    dependencies: [
        .package(url: "https://github.com/davidlivadaru/DLAngle.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "DLCoreGraphics",
            dependencies: ["DLAngle"]),
        .testTarget(
            name: "DLCoreGraphicsTests",
            dependencies: ["DLCoreGraphics"])
    ]
)
