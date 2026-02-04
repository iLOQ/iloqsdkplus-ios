// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/3.0.1490/sdk-ios-3.0.1490.zip"
let remoteKotlinChecksum = "16fe80131987c14b30c83978fd05bd4e074f5616f6105d96bfd4e6b2d52cb9d4"
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
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileKeyUpdater/1.0.101/iLoqMobileKeyUpdater-1.0.101-20250619_074259.zip",
            checksum: "8dd55c4e512ad3952a03337fc6b166720ff16a9c380af3e841b1aa3fc577e92b"
        ),
        .binaryTarget(
            name: "iLOQLockCommunicationSDKBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqLockCommunicationSDK/1.2.255/iLoqLockCommunicationSDK-1.2.255.zip",
            checksum: "83becb8cbcdca8231cdf802b4b8eafc59b34e1739a280ee1b556f5ac450564ad"
         ),
   ]
)
