// swift-tools-version:3.1

import PackageDescription
import Foundation

var isSwiftPackagerManagerTest: Bool {
    return ProcessInfo.processInfo.environment["SWIFTPM_TEST"] == "YES"
}

let package = Package(
    name: "SwiftGit2",
    dependencies: {
        var deps: [Package.Dependency] = [
            .Package(url: "https://github.com/antitypical/Result.git", majorVersion: 3, minor: 2),
            .Package(url: "../Clibgit2", "0.1.0")
        ]
        if isSwiftPackagerManagerTest {
            deps += [
                .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1),
                .Package(url: "../Guanaco", "0.1.0")
            ]
        }
        return deps
    }(),
    exclude: ["Sources/SwiftGit2.h", "Sources/SwiftGit2.m"]
)
