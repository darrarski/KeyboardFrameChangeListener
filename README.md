# KeyboardFrameChangeListener

![Platform](https://img.shields.io/badge/platform-iOS-333333.svg)
![Swift v4.0](https://img.shields.io/badge/swift-v4.0-orange.svg)
![Code Coverage](https://img.shields.io/badge/coverage-100%25-green.svg)
[![Build Status](https://travis-ci.org/darrarski/KeyboardFrameChangeListener.svg?branch=master)](https://travis-ci.org/darrarski/KeyboardFrameChangeListener)
[![CocoaPods](https://img.shields.io/cocoapods/v/KeyboardFrameChangeListener.svg)](https://cocoapods.org/pods/KeyboardFrameChangeListener)

Notifies you when on-screen keyboard changes its frame.

## Install

You can integrate `KeyboardFrameChangeListener ` with your project using [CocoaPods](https://cocoapods.org). Just add this line to your `Podfile`:

```ruby
pod 'KeyboardFrameChangeListener', '~> 1.0'
```

## Use

Check out included [DemoApp](DemoApp).

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
- Xcode 9

To bootstrap the project run:

```sh
bundle install
bundle exec fastlane setup
```

Then open `KeyboardFrameChangeListener.xcworkspace` in Xcode.

Use `DemoApp` build scheme for building and runing demo app.

Use `Tests` build scheme for runing tests.

To run tests from command line execute:

```sh
bundle exec fastlane test
```

## License

MIT License - check out [LICENSE](LICENSE) file.
