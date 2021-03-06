// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiveApp",
    platforms: [.iOS(.v13),.macOS(.v11),.watchOS(.v6),.tvOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "LiveApp", targets: ["LiveApp"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // todo: move over to the public binary distribution
//        .package(name: "SwiftInterpreter", url: "https://github.com/App-Maker-Software/SwiftInterpreter", from: "0.4.2"),
        .package(name: "SwiftInterpreterSource", url: "https://github.com/App-Maker-Software/SwiftInterpreterSource", .branch("main")), // for private development work
        .package(name: "ExceptionCatcher", url: "https://github.com/sindresorhus/ExceptionCatcher", from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "LiveApp",
//            dependencies: [
//                "ExceptionCatcher",
//                "SwiftInterpreter"
//            ],
//            swiftSettings: [
//                .define("INCLUDE_DEVELOPER_TOOLS", .when(configuration: .debug)),
//                .define("INCLUDE_DEVELOPER_LOGGING", .when(configuration: .debug)),
//                .define("PRODUCTION", .when(configuration: .release))
//            ]
//        ),
//        // This is for internal development at App Maker Software LLC. If you are interested in joining the team, contact Joe Hinkle
//        .target(
//            name: "LiveApp",
//            dependencies: [
//                "ExceptionCatcher",
//                .product(name: "SwiftInterpreterSource", package: "SwiftInterpreterSource")
//            ],
//            swiftSettings: [
//                .define("INCLUDE_DEVELOPER_TOOLS", .when(configuration: .debug)),
//                .define("INCLUDE_DEVELOPER_LOGGING", .when(configuration: .debug)),
//                .define("PRODUCTION", .when(configuration: .release)),
//                .define("_BUILD_FROM_SOURCE")
//            ]
//        ),
        // This is for use in App Maker
        .target(
            name: "LiveApp",
            dependencies: [
                "ExceptionCatcher",
                .product(name: "SwiftInterpreterPrivate", package: "SwiftInterpreterSource")
            ],
            swiftSettings: [
                .define("INCLUDE_DEVELOPER_TOOLS", .when(configuration: .debug)),
                .define("INCLUDE_DEVELOPER_LOGGING", .when(configuration: .debug)),
                .define("PRODUCTION", .when(configuration: .release)),
                .define("_BUILD_FOR_APP_MAKER")
            ]
        ),
//        .testTarget(
//            name: "LiveAppTests",
//            dependencies: ["LiveApp"]),
    ]
)
