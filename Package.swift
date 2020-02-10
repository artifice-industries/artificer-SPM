// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "artificer",
    dependencies: [
        .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.5.0"),
    ],
    targets: [
        .target(
            name: "artificer",
            dependencies: ["artificerCore"]),
        .target(name: "artificerCore",
                dependencies: ["SPMUtility"]
        ),
        .testTarget(
            name: "artificerTests",
            dependencies: ["artificerCore"]),
    ]
)
