// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/3.3.1613/sdk-ios-3.3.1613.zip"
let remoteKotlinChecksum = "49ffb7dddd01d5e5e6e43d3e82cd2b77690f692e17fc6ae3de20cac555200573"
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
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqLockCommunicationSDK/1.4.369/iLoqLockCommunicationSDK-1.4.369.zip",
            checksum: "b0ff28f05803d14f22397e3cf661fe60a897e961cc94435581891c3fdc17426c"
         ),
   ]
)
