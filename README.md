# ViewBuilders
[![Twitter: @lucas_abijmil](https://img.shields.io/badge/contact-@lucas_abijmil-blue.svg?style=flat)](https://twitter.com/lucas_abijmil)
[![Version](https://img.shields.io/cocoapods/v/ViewBuilders.svg?style=flat)](https://cocoapods.org/pods/ViewBuilders)
[![Swift Version](https://img.shields.io/badge/Swift-5.5+-F16D39.svg?style=flat)](https://developer.apple.com/swift)
[![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
[![License](https://img.shields.io/cocoapods/l/ViewBuilders.svg?style=flat)](https://cocoapods.org/pods/ViewBuilders)
[![Platform](https://img.shields.io/cocoapods/p/ViewBuilders.svg?style=flat)](https://cocoapods.org/pods/ViewBuilders)

## Overview
ViewBuilders is a powerful library for SwiftUI. It allows you to use *View Modifiers* to display components such as *toast*, *HUD*, *custom dialog* and more.

Behind the scenes, a modifier can be done in two different ways: all in SwiftUI or a UIKit-SwiftUI bridge.

In addition to these *View Modifiers*, ViewBuilders provides custom *EnvironmentValues* and modifiers to take full advantage of the preview in Xcode.

You can explore all the posibilities by running the [Example app](#Example).

## Features
### EnvironmentValues
  - [x] [HapticFeedback](Documentation/EnvironmentValues/HapticFeedback.md)
  - [x] [NavigationAction](Documentation/EnvironmentValues/NavigationAction.md)
  - [x] [CurrentDevice](Documentation/EnvironmentValues/CurrentDevice.md)
### View Modifiers
  - [x] [InteractiveSheet](Documentation/ViewModifiers/InteractiveSheet.md)
  - [x] [HalfSheet](Documentation/ViewModifiers/HalfSheet.md)
  - [x] [HUD](Documentation/ViewModifiers/HUD/README.md)
  - [x] [Toast](Documentation/ViewModifiers/Toast/README.md)
  - [x] [Dialog](Documentation/ViewModifiers/Dialog/README.md)
### Preview
  - [x] [Binding](Documentation/Preview/Binding.md)
  - [x] [Component](Documentation/Preview/Component/README.md)
  - [x] [Content](Documentation/Preview/Content/README.md)
  - [x] [Device](Documentation/Preview/Device/README.md)

## Preview
<p>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/InteractiveSheet.md"><img src="/Documentation/Assets/InteractiveSheet.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/HalfSheet.md"><img src="/Documentation/Assets/HalfSheet.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/HUD/README.md"><img src="/Documentation/Assets/HUDBottom.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/HUD/README.md"><img src="/Documentation/Assets/HUDTop.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/Toast/README.md"><img src="/Documentation/Assets/ToastBottom.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/Toast/README.md"><img src="/Documentation/Assets/ToastTop.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/EnvironmentValues/NavigationAction.md"><img src="/Documentation/Assets/NavigationAction.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/Dialog/README.md"><img src="/Documentation/Assets/DialogBottom.gif" width="200"></a>
  <a href="https://github.com/LucasAbijmil/ViewBuilders/blob/develop/Documentation/ViewModifiers/Dialog/README.md"><img src="/Documentation/Assets/DialogTop.gif" width="200"></a>
</p>

## Requirements
- iOS 15.0+
- Swift 5.5+

## Installation

### Swift Package Manager
- `File` > `Add Packages...`
- In the search bar at the top right, paste: `https://github.com/LucasAbijmil/ViewBuilders.git`
- For `Dependency Rule`, select `Up to Next Major Version` with **0.0.9**
- Click on `Add Package`

### CocoaPods
Add the following line to your Podfile:
```ruby
pod 'ViewBuilders'
```

## Example
To build the example project, please follow these steps:
```sh
$ git clone https://github.com/LucasAbijmil/ViewBuilders.git
$ cd ViewBuilders
$ cd Example
$ pod install
```

## Author
Lucas Abijmil, lucas.abijmil@gmail.com.

You can also reach me on [Twitter](https://twitter.com/lucas_abijmil).

## License
ViewBuilders is available under the MIT license. See the LICENSE file for more info.