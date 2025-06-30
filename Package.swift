// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/1.0.1179/sdk-ios-1.0.1179.zip"
let remoteKotlinChecksum = "068252262c7d43398ac61ae551fe63fe1be11af0044e4fde11955da3f0db5bd3"
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
             url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileSdk/3.0.1906/iLoqMobileSdk-3.0.1906-20250625_091235.zip",
             checksum: "2178540e8fa659a5883c6df5e3f4c93c962d6c601cc8ceebf32f3c570c4b49ba"
         ),
   ]
)
