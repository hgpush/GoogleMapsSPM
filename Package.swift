// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMapsSPM",
		defaultLocalization: "en",
		platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "GoogleMaps", targets: ["GoogleMaps"]),
				.library(name: "GoogleMapsBase", targets: ["GoogleMapsBase"]),
				.library(name: "GoogleMapsCore", targets: ["GoogleMapsCore"]),
				.library(name: "GoogleMapsM4B", targets: ["GoogleMapsM4B"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "GoogleMaps",
            path: "Sources/GoogleMapsSPM/GoogleMaps.xcframework"
				),
				.binaryTarget(
						name: "GoogleMapsBase",
						path: "Sources/GoogleMapsSPM/GoogleMapsBase.xcframework"
				),
				.binaryTarget(
						name: "GoogleMapsCore",
						path: "Sources/GoogleMapsSPM/GoogleMapsCore.xcframework"
				),
				.binaryTarget(
						name: "GoogleMapsM4B",
						path: "Sources/GoogleMapsSPM/GoogleMapsM4B.xcframework"
				),
    ]
)
