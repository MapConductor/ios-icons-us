// swift-tools-version: 5.9
import Foundation
import PackageDescription

let usingLocalIcons = FileManager.default.fileExists(atPath: "../ios-icons/Package.swift")
let iconsDependency: Package.Dependency = usingLocalIcons
    ? .package(path: "../ios-icons")
    : .package(url: "https://github.com/MapConductor/ios-icons", from: "0.1.0")

let package = Package(
    name: "ios-icons-us",
    platforms: [.iOS("15.1")],
    products: [.library(name: "MapConductorIconsUS", targets: ["MapConductorIconsUS"])],
    dependencies: [iconsDependency],
    targets: [
        .target(
            name: "MapConductorIconsUS",
            dependencies: [.product(name: "MapConductorIcons", package: "ios-icons")]
        ),
        .testTarget(
            name: "MapConductorIconsUSTests",
            dependencies: [
                "MapConductorIconsUS",
                .product(name: "MapConductorIcons", package: "ios-icons"),
            ]
        ),
    ]
)
