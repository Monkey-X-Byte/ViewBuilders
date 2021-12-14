# CurrentDevice

## Description
An `EnvironmentValue` that returns the current Apple device.


## Declaration
```swift
public struct CurrentDevice {

  public var isPhone: Bool { type == .phone }

  public var isPad: Bool { type == .pad }

  private enum DeviceType {
    case phone
    case pad
    case unknown
  }

  private var type: DeviceType {
    switch UIDevice.current.userInterfaceIdiom {
    case .phone:
      return .phone
    case .pad:
      return .pad
    default:
      return .unknown
    }
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    static let defaultValue = CurrentDevice()
  }
}

public extension EnvironmentValues {

  var currentDevice: CurrentDevice {
    self[CurrentDevice.EnvironmentKey.self]
  }
}
```