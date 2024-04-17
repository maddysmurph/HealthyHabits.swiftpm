// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "HealthyHabits",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "HealthyHabits",
            targets: ["AppModule"],
            bundleIdentifier: "org.jhhs.626284.HealthyHabits",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .heart),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            appCategory: .healthcareFitness
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)