// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ViewBuilders",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "ViewBuilders", targets: ["ViewBuilders"])
    ],
    targets: [
        .target(
            name: "ViewBuilders",
            path: "ViewBuilders"
        )
    ]
)
