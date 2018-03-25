# DLCoreGraphics

A cross-platform framework which brings easy to use convenience properties, functions and overloaded operators.

## Usage

You can import this module using:

```swift
import DLCoreGraphics
```

A common operation is to round/ceil/floor a number while computing the layout of view. To simplify the work, these functions have been overloaded for `CGPoint`, `CGSize` and `CGRect`.
Since we're doing layout for devices with different scales, it is helpful to the rounding operations based on the device's scale. Therefore, there are available 3 new functions: `screenRound`, `screenCeil` and `screenFloor`.

Few examples of operators:

```swift
var point = CGPoint(x: 10.0, y: 20.0)
let otherPoint = CGPoint(x: 40.0, y: 30.0)
point += otherPoint
// point == CGPoint(x: 50.0, y: 50.0)
```

```swift
let size = CGSize(width: 100, height: 100.0)
let newSize = size * 3 
// newSize == CGSize(width: 300, height: 300.0)
```

Finding the middle of right side of a rectangle

```swift
let rectangle = CGRect(x: 10.0, y: 20.0, width: 100, height: 100.0)
let middle = rectanle.middle(forSide: .right)
// middle == CGPoint(x: 110.0, y: 70.0)
```

And much more are available; check the framework for full details.

## Installation

### Supported Operating Systems

* **macOS** 10.12 and later
* **iOS** 10.0 and later
* **watchOS** 3.0 and later
* **tvOS** 10.0 and later

### 1. [Carthage](https://github.com/Carthage/Carthage)

```
github "davidlivadaru/DLCoreGraphics"
```

If you need the framework only for a single OS, then I propose to use `--platform [iOS|macOS|watchOS|tvOS]` specifier when your perform `carthage update`.

### 2. [CocoaPods](https://github.com/CocoaPods/CocoaPods)

Add the dependency in your `Podfile`.

```
pod 'DLCoreGraphics'
```

**Note**: Currently watchOS is not supported using CocoaPods, please use Carthage instead.

### 3. [Swift Package Manager](https://swift.org/package-manager/)

Add the the following dependecy in your [`Package.swift`]((https://swift.org/package-manager/#example-usage)):

```
dependencies: [
    .package(url: "https://github.com/davidlivadaru/DLCoreGraphics.git", .upToNextMajor(from: "1.0.0"))
]
```

and update your target's dependencies: 

```
targets: [
        .target(
            name: "YourTargetName",
            dependencies: ["DLCoreGraphics"])),
    ]
```

## Contribution

Module is covered by unit tests, however, bugs always slip through.
If you find a bug in the module create an [issue](https://github.com/davidlivadaru/DLCoreGraphics/issues).

If you want to contribute on fixing bugs or implementing new features then create a [pull request](https://github.com/davidlivadaru/DLCoreGraphics/pulls).

## License

**DLCoreGraphics** is released under MIT license. See [LICENSE](LICENSE) for details.