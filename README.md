# SwiftPMLinkerFailureDemonstration

This repository demonstrates how the linker fails using Swift Package Manager.


## How to reproduce

```console
$ git clone https://github.com/YOCKOW/SwiftPMLinkerFailureDemonstration
$ cd ./SwiftPMLinkerFailureDemonstration/NetworkUser
$ swift test
```

## What happens?

"NetworkUser" depends on the package "PseudoNetworkModule".
See its "[Package.swift](./PseudoNetworkModule/Package.swift)".
Only in the case that package' name is "Network" and library's name is "SwiftNetwork", the linker fails.
