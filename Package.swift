// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/3.4.1655/sdk-ios-3.4.1655.zip"
let remoteKotlinChecksum = "01506148f91fed5de157c0f63bcb0eeca15ef13542a15d429f3b0c662f6be7fa"
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
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqLockCommunicationSDK/1.6.438/iLoqLockCommunicationSDK-1.6.438.zip",
            checksum: "29e27130b57c844e744b91022714574d880e3f214026598ecc8490b72e638402"
         ),
   ]
)
