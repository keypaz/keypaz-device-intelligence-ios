// swift-tools-version:5.3
import PackageDescription

let version = "0.0.1"

let package = Package(
    name: "DeviceIntelligenceIOS",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DeviceIntelligenceIOS",
            targets: ["DeviceIntelligenceIOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit", from: "5.6.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DeviceIntelligenceIOS",
            path: "./XCFrameworks/DeviceIntelligenceIOS-\(version).xcframework")
    ]
)
