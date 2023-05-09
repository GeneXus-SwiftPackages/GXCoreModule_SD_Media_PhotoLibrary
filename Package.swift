// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Media_PhotoLibrary",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Media_PhotoLibrary",
			targets: ["GXCoreModule_SD_Media_PhotoLibraryWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUIPhotoLibrary.git", branch: "beta")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Media_PhotoLibrary-1.0.0-beta+20230509131236.xcframework.zip",
			checksum: "ed707a8744f9d4176520d3bf2bc03291567761c38720f9b2aa1dadcfcb70668d"
		)
	]
)