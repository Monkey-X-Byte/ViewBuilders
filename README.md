# ViewBuilders
[![Twitter: @lucas_abijmil](https://img.shields.io/badge/contact-@lucas_abijmil-blue.svg?style=flat)](https://twitter.com/lucas_abijmil)
[![Version](https://img.shields.io/cocoapods/v/ViewBuilders.svg?style=flat)](https://cocoapods.org/pods/ViewBuilders)
[![Swift Version](https://img.shields.io/badge/Swift-5.5+-F16D39.svg?style=flat)](https://developer.apple.com/swift)
[![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
[![License](https://img.shields.io/cocoapods/l/ViewBuilders.svg?style=flat)](https://cocoapods.org/pods/ViewBuilders)
[![Platform](https://img.shields.io/cocoapods/p/ViewBuilders.svg?style=flat)](https://cocoapods.org/pods/ViewBuilders)

## Overview
ViewBuilders is a powerful library for use with SwiftUI. It allows you to benefit from many modifiers displaying components missing natively in SwiftUI or basic features such as displaying a toaster.

Behind the scenes, a modifier can be done in two different ways: all in SwiftUI or a UIKit-SwiftUI bridge.

You can explore all the posibilities by running the [Example app](#Example).
<p>
  <img src="/Documentation/Assets/InteractiveSheet.gif" width="200">
  <img src="/Documentation/Assets/HalfSheet.gif" width="200">
  <img src="/Documentation/Assets/HUDBottom.gif" width="200">
  <img src="/Documentation/Assets/HUDTop.gif" width="200">
  <img src="/Documentation/Assets/ToasterBottom.gif" width="200">
  <img src="/Documentation/Assets/ToasterTop.gif" width="200">
</p>

## Features
- [x] [InteractiveSheet](Documentation/InteractiveSheet.md)
- [x] [HalfSheet](Documentation/HalfSheet.md)
- [x] [HUD](Documentation/HUD/README.md)
- [x] [Toaster](Documentation/Toaster/README.md)


## Requirements
- iOS 15.0+ 
- Swift 5.5+ 

## Installation

### Swift Package Manager
- File > Swift Packages > Add Package Dependency
- Add `https://github.com/LucasAbijmil/ViewBuilders.git`
- Select **Up to Next Major Version** with **0.0.1**

### CocoaPods
Add the following line to your Podfile:
```ruby
pod 'ViewBuilders'
```

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author
Lucas Abijmil, lucas.abijmil@gmail.com. 

You can also reach me on [Twitter](https://twitter.com/lucas_abijmil).

## License
ViewBuilders is available under the MIT license. See the LICENSE file for more info.
