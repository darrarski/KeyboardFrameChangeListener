# KeyboardFrameChangeListener

![Platform](https://img.shields.io/badge/platform-iOS-333333.svg)
![Swift v4.2](https://img.shields.io/badge/swift-v4.2-orange.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/d48329c93acb3385a2b9/maintainability)](https://codeclimate.com/github/darrarski/KeyboardFrameChangeListener/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/d48329c93acb3385a2b9/test_coverage)](https://codeclimate.com/github/darrarski/KeyboardFrameChangeListener/test_coverage)
[![Build Status](https://travis-ci.org/darrarski/KeyboardFrameChangeListener.svg?branch=master)](https://travis-ci.org/darrarski/KeyboardFrameChangeListener)
[![CocoaPods](https://img.shields.io/cocoapods/v/KeyboardFrameChangeListener.svg)](https://cocoapods.org/pods/KeyboardFrameChangeListener)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Notifies you when on-screen keyboard changes its frame.

## Install

Minimum deployment target: **iOS 10.0**

### CocoaPods

You can integrate `KeyboardFrameChangeListener ` with your project using [CocoaPods](https://cocoapods.org). Just add this line to your `Podfile`:

```ruby
pod 'KeyboardFrameChangeListener', '~> 1.0'
```

### Carthage

You can also use [Carthage](https://github.com/Carthage/Carthage) if you prefer by adding following line to your `Cartfile`:

```
github "darrarski/KeyboardFrameChangeListener" ~> 1.0
```

## Use

Check out included [DemoApp](DemoApp) or [ScrollViewController](https://github.com/darrarski/ScrollViewController) library which uses `KeyboardFrameChangeListener` under the hood.

**TL;DR**

```swift
let listener: KeyboardFrameChangeListening 
listener = KeyboardFrameChangeListener(notificationCenter: NotificationCenter.default)
listener.keyboardFrameWillChange = { change in
    print("Keybaord frame will change: \(change)")
}
```

## Develop

Requirements: 

- Ruby with [Bundler](http://bundler.io)
- Xcode 10

To bootstrap the project run:

```sh
bundle install
bundle exec fastlane setup
```

Then open `KeyboardFrameChangeListener.xcodeproj` in Xcode.

Use `DemoApp` build scheme for building and runing demo app.

Use `Tests` build scheme for runing tests.

To run tests from command line execute:

```sh
bundle exec fastlane test
```

To generate and open test coverage report in HTML format, run:

```sh
bundle exec fastlane coverage
```

## License

MIT License - check out [LICENSE](LICENSE) file.
