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
            url: "https://topon-sdk-release.oss-cn-hangzhou.aliyuncs.com/Temp/juhesdk/AnyThinkDebuggerUISDK/1.1.0/AnyThinkDebuggerUISDK.zip",
            checksum: "033f6b241dfa0dfe57b0881d7c83fb042ec0d79123da328af6270cdfd5209737"
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
