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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-beta.17"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUIPhotoLibrary.git", exact: "3.0.0-beta.17")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_PhotoLibrary-3.0.0-beta.17.xcframework.zip",
			checksum: "34a2887206c29f5449fe43e57ac86cfb63ed13fda05844fa351de047e90b0492"
		)
	]
)