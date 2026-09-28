// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNDebugUISDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNDebugUISDK",
            targets: ["TPNDebugUISDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDebuggerUISDK",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.0/AnyThinkDebuggerUISDK.zip",
            checksum: "67d7b2dafc4459d3778244ec7ccede7b1e42c8ab013f6155a86ba55c22ca5c19"
        ),
        .target(
            name: "TPNDebugUISDKTarget",
            dependencies: [
                "AnyThinkDebuggerUISDK",
                .product(name: "TPNiOS", package: "TPNiOS_SPM")
            ],
            path: "Sources/TPNDebugUISDKTarget"
        )
    ]
)
