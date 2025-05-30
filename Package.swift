// swift-tools-version:5.7
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/0.9.1103/sdk-ios-0.9.1103.zip"
let remoteKotlinChecksum = "f22f9bace28008a6bbb35548a002230ef73868aa3e4ed211f50d36e313eb6b63"
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
            url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileKeyUpdater/1.0.0/iLoqMobileKeyUpdater-1.0.0-20250524_091710.zip",
            checksum: "3e833416d5b1c5c79bc229674be7dcf62d27adba1a3910dce78569936f6e3e2c"
        ),
        .binaryTarget(
             name: "iLOQMobileSDKBinary",
             url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileSdk/3.0.1853/iLoqMobileSdk-3.0.1853-20250530_101522.zip",
             checksum: "faf37ec66729d2fd1f68e1e50c8731372bb984c7014ca76f18d5f0412793b6c2"
         ),
   ]
)
