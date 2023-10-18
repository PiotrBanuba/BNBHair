// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-64-g951557ebd1"

let package = Package(
    name: "BNBHair",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHair",
            targets: [
                "BNBHair",
                "BNBHair_BNBSdkCore",
                "BNBHair_BNBEffectPlayer",
                "BNBHair_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBHair",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-64-g951557ebd1/BNBHair.zip",
            checksum: "8a9d253bb1c4c39dc2a09cbe025e6dc067af762a79e913e5058569f13d62a867"
        ),
        .target(
            name: "BNBHair_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBHair_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBHair_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
