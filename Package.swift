// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "SwiftGit2",
    targets: [
        Target(name: "SwiftGit2")
    ],
    dependencies: [
        .Package(url: "https://github.com/antitypical/Result.git", majorVersion: 3, minor: 0),
    ]
)
