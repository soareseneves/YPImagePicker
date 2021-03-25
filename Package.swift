// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YPImagePicker",
    defaultLocalization: "en",
    platforms: [
        .iOS("9.0")
    ],
    products: [
        .library(name: "YPImagePicker", targets: ["YPImagePicker"])
    ],
    dependencies: [
        .package(url: "https://github.com/freshOS/Stevia", from: "4.7.3"),
        .package(url: "https://github.com/HHK1/PryntTrimmerView", from: "4.0.2")
    ],
    targets: [
        .target(
            name: "YPImagePicker",
            path: "Source",
            exclude: [
                "Info.plist",
            ],
            resources: [.process("Resources")]
        )
    ]
)
