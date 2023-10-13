// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-13"

let package = Package(
    name: "BNBHair",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHair",
            targets: [
                "BNBHair_Target",
                "BNBHair_BNBHair_Target",
                "BNBHair_BNBHair_Target",
                "BNBHair_BNBHair_Target"
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
            name: "BNBHair_Target",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBHair.zip",
            checksum: "2f2301f78a1a12bb5cda4234a4245fdb0b130b4d9f65b99f76af83a5ee29db2c"
        ),
        .target(
            name: "BNBHair_BNBSdkCore_Target",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBHair_BNBEffectPlayer_Target",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBHair_BNBScripting_Target",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
