//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
public extension View {

  /// Preview on a specific device and orientation.
  ///
  /// - Parameters:
  ///   - device: The device displayed in the preview.
  ///   - orientation: The orientation of the device.
  func previewDevice(_ device: Device, orientation: InterfaceOrientation = .portrait) -> some View {
    PreviewDevices(content: self, devices: [device], orientation: orientation)
  }

  /// Preview on specific devices and orientation.
  ///
  /// - Parameters:
  ///   - devices: The devices displayed in the preview.
  ///   - orientation: The orientation of the device.
  func previewDevices(_ devices: [Device], orientation: InterfaceOrientation = .portrait) -> some View {
    PreviewDevices(content: self, devices: devices, orientation: orientation)
  }
}

/// Devices that can be displayed in the preview.
public enum Device: String {
  case iPodTouch = "iPod touch (7th generation)"
  case iPhoneSE = "iPhone SE (2nd generation)"
  case iPhone6s = "iPhone 6s"
  case iPhone6sPlus = "iPhone 6s Plus"
  case iPhone7 = "iPhone 7"
  case iPhone7Plus = "iPhone 7 Plus"
  case iPhone8 = "iPhone 8"
  case iPhone8Plus = "iPhone 8 Plus"
  case iPhoneX = "iPhone X"
  case iPhoneXs = "iPhone Xs"
  case iPhoneXsMax = "iPhone Xs Max"
  case iPhoneXʀ = "iPhone Xʀ"
  case iPhone11 = "iPhone 11"
  case iPhone11Pro = "iPhone 11 Pro"
  case iPhone11ProMax = "iPhone 11 Pro Max"
  case iPhone12Mini = "iPhone 12 mini"
  case iPhone12 = "iPhone 12"
  case iPhone12Pro = "iPhone 12 Pro"
  case iPhone12ProMax = "iPhone 12 Pro Max"
  case iPhone13Mini = "iPhone 13 mini"
  case iPhone13 = "iPhone 13"
  case iPhone13Pro = "iPhone 13 Pro"
  case iPhone13ProMax = "iPhone 13 Pro Max"
  case iPad = "iPad (9th generation)"
  case iPadAir = "iPad Air (4th generation)"
  case iPadMini = "iPad mini (6th generation)"
  case iPadPro97 = "iPad Pro (9.7-inch)"
  case iPadPro105 = "iPad Pro (10.5-inch)"
  case iPadPro11 = "iPad Pro (11-inch) (3rd generation)"
  case iPadPro129 = "iPad Pro (12.9-inch) (5th generation)"
}
#endif
