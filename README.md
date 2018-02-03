# EmailValidator

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Alamofire.svg)](https://img.shields.io/cocoapods/v/Alamofire.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Platforms](https://img.shields.io/badge/platform-iOS%20%7C%20tvOS%20%7C%20macOS-lightgrey.svg)
![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)

Basic lightweight email validation. The aim of this library is to simply validation if a email structure is valid. Built on top of NSDataDetector, this library provides a robust way to validate an email structure.

## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate EmailValidator into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "jwelton/EmailValidator"
```

Run `carthage update` to build the framework and drag the built `EmailValidator.framework` into your Xcode project.

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate EmailValidator into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'EmailValidator'
end
```

Then, run the following command:

```bash
$ pod install
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but EmailValidator does support its use on supported platforms. 

Once you have your Swift package set up, adding EmailValidator as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

#### Swift 3

```swift
dependencies: [
    .Package(url: "https://github.com/jwelton/EmailValidator.git", majorVersion: 1)
]
```

#### Swift 4

```swift
dependencies: [
    .package(url: "https://github.com/jwelton/EmailValidator.git", from: "1.0.0")
]
```

## Usage example

``` swift
import EmailValidator

let result = EmailValidator().validate("test@example.com")

switch result {
    case .valid: print("Yay its valid!")
    case .invalid: print("Sorry, email is invalid")
}
```

## Maintainers

[@JWelton](https://github.com/jwelton)

## Contribute

Feel free to dive in! [Open an issue](https://github.com/jwelton/EmailValidator/issues/new) or submit PRs.

## License

[MIT](LICENSE) © Jake Welton