// swift-tools-version:5.7
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/1.0.1178/sdk-ios-1.0.1178.zip"
let remoteKotlinChecksum = "e070f5a49b4e12087e8cc0ba5a9e51ef064d58f4166d80c48a42cce956c6a46b"
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
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileKeyUpdater/1.0.94/iLoqMobileKeyUpdater-1.0.94-20250604_111921.zip",
            checksum: "60303e67c5b58773cfb9e0af764ce9f06696eac5007a2743cc3e8d10cdeb5075"
        ),
        .binaryTarget(
             name: "iLOQMobileSDKBinary",
             url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileSdk/3.0.1880/iLoqMobileSdk-3.0.1880-20250604_143402.zip",
             checksum: "8ea0ce23ae4a8469208434deb7f91efa46d4474f9476a57c0db7202db6f1435b"
         ),
   ]
)
