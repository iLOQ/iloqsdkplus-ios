// swift-tools-version:5.6
import PackageDescription

let remoteKotlinUrl = "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/mobile/iLOQSdkPlus/sdk-ios/0.9.1100/sdk-ios-0.9.1100.zip"
let remoteKotlinChecksum = "453ec8b6732392836b60d50f2387835e380f5484786c2af6e9f41ed1c68b6691"
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
             url: "https://repository.iloq.com:8444/repository/maven-iloq-sdk-plus/com/iloq/ios/iLoqMobileSdk/3.0.0/iLoqMobileSdk-3.0.0-20250523_071620.zip",
             checksum: "389404ae347d3d283d823e21e2cabf817d4dca95e1f72c0ebfbd1907e151b584"
         ),
   ]
)
