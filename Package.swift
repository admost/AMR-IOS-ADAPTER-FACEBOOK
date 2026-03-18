// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterFacebook",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterFacebook",
            targets: ["AMRAdapterFacebookBridge"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84")
    ],
    targets: [
        .target(
            name: "AMRAdapterFacebookBridge",
            dependencies: [
                "AMRAdapterFacebookLib",
                "FBAudienceNetwork",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterFacebook",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterFacebookLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-FACEBOOK/releases/download/6.21.2/AMRAdapterFacebook.xcframework.zip",
            checksum: "2271523a2403e4f386eff41b9a38f2230cf0089334e154b0079c93ac0209dba1"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://developers.facebook.com/resources/FBAudienceNetwork-6.21.1.zip",
            checksum: "acb53ced101d439131f0c5d0cf3da609129227140a66e4f51ec77a368a753843"
        )
    ]
)
