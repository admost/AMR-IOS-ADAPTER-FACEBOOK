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
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", from: "6.21.1")
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-FACEBOOK/releases/download/6.21.3/AMRAdapterFacebook.xcframework.zip",
            checksum: "a335b92b0df643f9287d8bb6cccda1c3adc3179ad8804725d0ab2e6e2ae2a3c8"
        )
    ]
)
