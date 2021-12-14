//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
public extension View {

  /// Preview with a specific `ColorScheme` and orientation.
  ///
  /// - Parameters:
  ///   - colorScheme: The ColorScheme to apply to the preview.
  ///   - orientation: The orientation of the device.
  func previewWithColorScheme(_ colorScheme: ColorScheme, orientation: InterfaceOrientation = .portrait) -> some View {
    PreviewWithColorSchemes(content: self, colorSchemes: [colorScheme], layout: .device, orientation: orientation)
  }

  /// Preview with all `ColorScheme` and a specific orientation.
  ///
  /// - Parameters:
  ///   - orientation: The orientation of the device.
  func previewWithColorSchemes(orientation: InterfaceOrientation = .portrait) -> some View {
    PreviewWithColorSchemes(content: self, colorSchemes: ColorScheme.allCases, layout: .device, orientation: orientation)
  }
}
#endif
