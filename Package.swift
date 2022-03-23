// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebRTCKit",
    products: [
        .library(
            name: "WebRTCWrapper",
            targets: ["cWebRTC", "WebRTCWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
//        .target(
//            name: "MyLibrary",
//            dependencies: ["WebRTCWrapper"]),
        .target(
               name: "cWebRTC",
               path: "Sources/WebRTC",
               cSettings: [
                 .headerSearchPath("Sources/WebRTC/include"),
               ]),
        .target(
                name: "WebRTCWrapper",
                dependencies: ["cWebRTC"],
                path: "Sources/WebRTCWrapper"),
//        .testTarget(
//            name: "MyLibraryTests",
//            dependencies: ["MyLibrary"]),
    ]
)
