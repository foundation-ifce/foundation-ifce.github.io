// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "foundation-ifce.github.io",
    platforms: [.macOS(.v12)],
    products: [
        .executable(
            name: "foundation-ifce.github.io",
            targets: ["foundation-ifce.github.io"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0")
    ],
    targets: [
        .executableTarget(
            name: "foundation-ifce.github.io",
            dependencies: [
                .product(name: "Publish", package: "publish"),
                .product(name: "SplashPublishPlugin", package: "splashpublishplugin")
            ]
        )
    ]
)
