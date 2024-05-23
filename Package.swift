// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "OpenSSL",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15),
        .tvOS(.v12),
        .custom("xros", versionString: "1.0")
    ],
    products: [
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/HAHALOSAH/OpenSSL-Swift/releases/download/3.1.5004/OpenSSL.xcframework.zip",
            checksum: "bf9e57ba07da86fa2c11c42a47f4a47585f1ae3e5b04d1958bd1e0b71155377f"
        )
    ]
)
