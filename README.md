# SwiftPMLinkerFailureDemonstration

This repository demonstrates how the linker fails using Swift Package Manager.


## How to reproduce

```console
$ git clone https://github.com/YOCKOW/SwiftPMLinkerFailureDemonstration
$ cd ./SwiftPMLinkerFailureDemonstration/NetworkUser
$ swift test
```

## What happens?

"NetworkUser" depends on the package "PseudoNetworkModule" whose `Package.swift` is:

```Swift
// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Network",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftNetwork",
            type: .dynamic,
            targets: ["Network"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Network",
            dependencies: []),
        .testTarget(
            name: "NetworkTests",
            dependencies: ["Network"]),
    ]
)

```

Only in the case that package' name is "Network" and library's name is "SwiftNetwork", the linker fails.
