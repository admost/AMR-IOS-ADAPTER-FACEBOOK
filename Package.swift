// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AMRAdapterFacebook",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AMRAdapterFacebook",
            targets: ["AMRAdapterFacebookBridge"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.6.0-beta.1"),
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", from: "6.22.0")
    ],
    targets: [
        .target(
            name: "AMRAdapterFacebookBridge",
            dependencies: [
                "AMRAdapterFacebookLib",
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork"),
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-FACEBOOK/releases/download/6.22.1/AMRAdapterFacebook.xcframework.zip",
            checksum: "772c989f7eefe23390ab1ef783f08aecc58902d6572f2338601895b5bf41e08d"
        )
    ]
)
