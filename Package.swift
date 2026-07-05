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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-beta.28"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUIPhotoLibrary.git", exact: "4.2.0-beta.28")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_PhotoLibrary-4.2.0-beta.28.xcframework.zip",
			checksum: "254c20e27fd429c36e91ee706aed270e1242bbcd149eb193de2fbaccab5c45f5"
		)
	]
)