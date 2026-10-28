// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/3.5.1752/sdk-ios-3.5.1752.zip"
let remoteKotlinChecksum = "e3547e1d07d7ce8afc8795f21ae25853b5b3ee4e94d8c0df40726bd5dd1d4494"
let packageName = "iLOQSdkPlus"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: packageName,
            targets: ["\(packageName)Target"]
        ),
    ],
    targets: [
        .target(
            name: "\(packageName)Target",
            dependencies: [
                "iLOQSdkPlusBinary",
                "iLOQKeyUpdaterBinary",
                "SQLCipherBinary",
                "iLOQLockCommunicationSDKBinary"
            ]
        ),
        .binaryTarget(
            name: "SQLCipherBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/SQLCipher/4.10.0/SQLCipher-4.10.0.zip",
            checksum: "fa8a0ed97b5df95bfb450fa1503d5975faf25ac1b00676006fb606fb5aafcb6b"
         ),
        .binaryTarget(
            name: "iLOQSdkPlusBinary",
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
        .binaryTarget(
            name: "iLOQKeyUpdaterBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileKeyUpdater/1.0.120/iLoqMobileKeyUpdater-1.0.120-20260515_141058.zip",
            checksum: "1fd0ba6ea52dc091a0bf642053b02adb17cb0d548573b4ef31616cbbd51ca813"
        ),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqLockCommunicationSDK/1.7.457/iLoqLockCommunicationSDK-1.7.457.zip",
            checksum: "06edf77ea8a0c94d3c1af7603a9344e6172b0e0fa14db3b349d96f1ac6a6323d"
         ),
   ]
)
