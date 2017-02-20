# CoreGraphicsDLExtension

A cross-platform framework which brings easy to use convenience properties, functions and overloaded operators.

Documentation and others *Coming soon&trade;*.

## Supported Operating Systems

* **macOS** 10.10 and later
* **iOS** 9.0 and later
* **watchOS** 2.0 and later
* **tvOS** 9.0 and later

## Installation

### Swift Package Manager

If you don't have a [Package](https://swift.org/package-manager/#example-usage) file, create one.

Add a new dependency:

`
.Package(url: "https://github.com/davidlivadaru/CoreGraphicsDLExtension.git",
                 majorVersion: 0)
`

Save the file, then fetch the new dependencies:

`swift package fetch`

For now you have to fetch to other dependecy yourself.

`cd Packages/CoreGraphicsDLExtension-major.minor.patch`

`swift package fetch`

Open the path folder Packages/CoreGraphicsDLExtension-major.minor.patch/CoreGraphicsDLExtension/ and the Xcode project from into your application project/workspace. Now expand the Products group from CoreGraphicsDLExtension project and drag the framework for which OS you target into your application project's Embed Framework section.

## Contribution

[Open an issue](https://github.com/davidlivadaru/CoreGraphicsDLExtension/issues/new) if you have found a bug, have a feature request or provide feedback.

[Open a pull request](https://github.com/davidlivadaru/CoreGraphicsDLExtension/compare) if you fixed a bug and want to share it with the community.

##License

See [LICENSE](LICENSE) file.