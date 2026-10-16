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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.1/AnyThinkDebuggerUISDK.zip",
            checksum: "1ab602d1b0e126ddb488b43f51bf1336ac6fa53a4ef84be8c299bff3d36d96f1"
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
