// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "XCStringsToolPlugin",
    products: [
        .plugin(name: "XCStringsToolPlugin", targets: ["XCStringsToolPlugin"])
    ],
    targets: [
        .plugin(
            name: "XCStringsToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "xcstrings-tool")
            ]
        ),
        .binaryTarget(
            name: "xcstrings-tool",
            url: "https://github.com/hiragram/xcstrings-tool/releases/download/0.1.2/xcstrings-tool.artifactbundle.zip",
            checksum: "06aaaac6feec03c3633e80a79075f3c0c093807300b606abe5d80887ba11e79e"
        )
    ]
)
