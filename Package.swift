// swift-tools-version:5.3
import PackageDescription

let version = "0.0.5"

let package = Package(
    name: "DeviceIntelligenceIOS",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DeviceIntelligenceIOS",
            targets: ["DeviceIntelligenceIOSTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit", from: "5.6.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DeviceIntelligenceIOS",
            path: "./XCFrameworks/\(version)/DeviceIntelligenceIOS.xcframework",
        ),
        .target(
            name: "DeviceIntelligenceIOSTargets",
            dependencies: [
                "DeviceKit",
                .target(name: "DeviceIntelligenceIOS"),
            ],
            path: "DeviceIntelligenceIOSTargets",
            swiftSettings: [
                .define("UIKIT_ENABLED")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
