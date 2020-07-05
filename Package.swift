// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM-Demo-QuickRegressionCompat",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "SPM-Demo-QuickRegressionCompat",
            targets: ["SPM-Demo-QuickRegressionCompat"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        .target(
            name: "SPM-Demo-QuickRegressionCompat",
            dependencies: []
        ),
        .testTarget(
            name: "SPM-Demo-QuickRegressionCompatTests",
            dependencies: ["SPM-Demo-QuickRegressionCompat", "Quick"]
        ),
    ]
)
