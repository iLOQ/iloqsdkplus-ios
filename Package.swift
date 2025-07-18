// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/1.0.1241/sdk-ios-1.0.1241.zip"
let remoteKotlinChecksum = "9edf26d1b83e58b861f9d6c0ced85a5bff7b003d5ca433ba4063e53d5995c802"
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
                "SQLCipherBinary",
                "iLOQKeyUpdaterBinary",
                "iLOQMobileSDKBinary",
            ]
        ),
        .binaryTarget(
            name: "iLOQSdkPlusBinary",
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
        .binaryTarget(
            name: "SQLCipherBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/SQLCipher/4.8.0/SQLCipher-4.8.0.zip",
             checksum: "c68643eb2b292e21a704a6727f373dd5a3419aef111e8e445701cc4a2fc2b7b5"
         ),
        .binaryTarget(
            name: "iLOQKeyUpdaterBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileKeyUpdater/1.0.101/iLoqMobileKeyUpdater-1.0.101-20250619_074259.zip",
            checksum: "8dd55c4e512ad3952a03337fc6b166720ff16a9c380af3e841b1aa3fc577e92b"
        ),
        .binaryTarget(
            name: "iLOQMobileSDKBinary",
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileSdk/3.0.1924/iLoqMobileSdk-3.0.1924-20250717_132239.zip",
            checksum: "b86a2ba001e2d61f4b119c62a37da20e60fe28b2d1bb9d6d28224dcb85bddd3f"
         ),
   ]
)
