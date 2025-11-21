// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/2.0.1363/sdk-ios-2.0.1363.zip"
let remoteKotlinChecksum = "cb6fc3ee4d9520070658cfebe3493e834593d23b7363085dfda3edf772736dcc"
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
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqLockCommunicationSDK/1.0.194/iLoqLockCommunicationSDK-1.0.194-20250924_150629.zip",
            checksum: "ae46640be409add9913f69ca24e6ed74a6cf02b6995abd89a68c5b3cde062bc2"
         ),
   ]
)
