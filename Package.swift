// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-1"

let package = Package(
    name: "BNBHair",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBHair",
            targets: ["BNBHair"]
        ),
        .library(
            name: "BNBSdkCore",
            targets: ["BNBSdkCore"]
        ),
        .library(
            name: "BNBEffectPlayer",
            targets: ["BNBEffectPlayer"]
        ),
        .library(
            name: "BNBScripting",
            targets: ["BNBScripting"]
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBHair.zip",
            checksum: "2f2301f78a1a12bb5cda4234a4245fdb0b130b4d9f65b99f76af83a5ee29db2c"
        ),
        .target(
            name: "BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
