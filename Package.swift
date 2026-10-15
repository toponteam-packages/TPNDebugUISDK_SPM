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
        .package(url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.1/AnyThinkDebuggerUISDK.zip", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDebuggerUISDK",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.1/AnyThinkDebuggerUISDK.zip",
            checksum: "b0f4566347cd25cab802a7574b6719fbabde1371409296a1c5159f70aee8b470"
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
