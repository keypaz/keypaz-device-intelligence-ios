// swift-tools-version:5.3
import PackageDescription

let version = "0.0.2"

let package = Package(
    name: "DeviceIntelligenceIOS",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DeviceIntelligenceIOS",
            targets: ["Stubs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit", from: "5.6.0"),
    ],
    targets: [
        .binaryTarget(
            name: "DeviceIntelligenceIOS",
            path: "./XCFrameworks/DeviceIntelligenceIOS-\(version).xcframework",
        ),
        .target(
            name: "Stubs",
            dependencies: [
                "DeviceKit",
                .target(name: "DeviceIntelligenceIOS"),
            ],
            path: "Stubs",
            swiftSettings: [
                .define("UIKIT_ENABLED")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
