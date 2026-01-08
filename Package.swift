// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Media_PhotoLibrary",
	platforms: [.iOS("15.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Media_PhotoLibrary",
			targets: ["GXCoreModule_SD_Media_PhotoLibraryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.1.0-beta.19"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUIPhotoLibrary.git", exact: "4.1.0-beta.19")
	],
	targets: [
		.target(name: "GXCoreModule_SD_Media_PhotoLibraryWrapper",
				dependencies: [
					"GXCoreModule_SD_Media_PhotoLibrary",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS])),
					.product(name: "GXCoreUIPhotoLibrary", package: "GXCoreUIPhotoLibrary", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Media_PhotoLibrary",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_PhotoLibrary-4.1.0-beta.19.xcframework.zip",
			checksum: "e6ed1f2c51b1fb47dc3a9771b722593c3d3ab5d23822d3eaaf04d08dcea56688"
		)
	]
)