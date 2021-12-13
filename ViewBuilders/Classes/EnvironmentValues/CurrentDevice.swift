//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public struct CurrentDevice {

  /// A property that indicates if the current device is a phone.
  public var isPhone: Bool { type == .phone }

  /// A property that indicates if the current device is a pad.
  public var isPad: Bool { type == .pad }

  /// Types of devices in Apple's ecosystem.
  private enum DeviceType {
    case phone
    case pad
    case unknown
  }

  /// A property that detects the current device.
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
    /// The default value for this `EnvironmentValue`.
    static let defaultValue = CurrentDevice()
  }
}

public extension EnvironmentValues {

  /// An `EnvironmentValue` that returns the current Apple device.
  var currentDevice: CurrentDevice {
    self[CurrentDevice.EnvironmentKey.self]
  }
}
