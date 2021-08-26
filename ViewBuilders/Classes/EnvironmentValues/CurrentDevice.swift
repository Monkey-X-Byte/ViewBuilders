//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

struct CurrentDevice {

  /// A property that indicates if the current iOS device is an iPhone.
  public var isPhone: Bool { type == .phone }

  /// A property that indicates if the current iOS device is an iPad.
  public var isPad: Bool { type == .pad }

  /// Types of iOS devices in Apple's ecosystem.
  private enum DeviceType {
    case phone
    case pad
  }

  /// A property that detects the current iOS device.
  private var type: DeviceType {
    return UIDevice.current.userInterfaceIdiom == .pad ? .pad : .phone
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    /// The default value for this `EnvironmentValue`.
    static let defaultValue = CurrentDevice()
  }
}

extension EnvironmentValues {

  /// An `EnvironmentValue` that returns the current iOS device.
  ///
  /// The currentDevice returned can be either iPhone or iPad.
  var currentDevice: CurrentDevice {
    self[CurrentDevice.EnvironmentKey.self]
  }
}
