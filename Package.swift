// swift-tools-version: 5.9
// Created by Anushka Samarasinghe on 2025-07-12

import PackageDescription

let package = Package(
    name: "StringExtensionHTML",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "StringExtensionHTML",
            targets: ["StringExtensionHTML"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "StringExtensionHTML",
            path: "Sources/StringExtensionHTML"),
    ]
) 
