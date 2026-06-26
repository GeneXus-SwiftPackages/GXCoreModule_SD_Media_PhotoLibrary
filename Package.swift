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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-beta.25"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUIPhotoLibrary.git", exact: "4.2.0-beta.25")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_PhotoLibrary-4.2.0-beta.25.xcframework.zip",
			checksum: "7c0484f210bdd7175e0564193c5d69c68ee013536d140a49612248730a3129f8"
		)
	]
)