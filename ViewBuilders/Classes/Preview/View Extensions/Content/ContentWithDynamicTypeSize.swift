//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
public extension View {

  /// Preview with a specific `DynamicTypeSize` and orientation.
  ///
  /// - Parameters:
  ///   - dynamicTypeSize: The DynamicTypeSize to apply to the preview.
  ///   - orientation: The orientation of the device.
  func previewWithDynamicTypeSize(_ dynamicTypeSize: DynamicTypeSize, orientation: InterfaceOrientation = .portrait) -> some View {
    PreviewWithDynamicTypeSizes(content: self, dynamicTypeSizes: [dynamicTypeSize], layout: .device, orientation: orientation)
  }

  /// Preview with multiple `DynamicTypeSize` and a specific orientation.
  ///
  /// - Parameters:
  ///   - dynamicTypeSizes: The DynamicTypeSizes to apply to the preview.
  ///   - orientation: The orientation of the device.
  func previewWithDynamicTypeSizes(_ dynamicTypeSizes: [DynamicTypeSize] = DynamicTypeSize.allCases, orientation: InterfaceOrientation = .portrait) -> some View {
    PreviewWithDynamicTypeSizes(content: self, dynamicTypeSizes: dynamicTypeSizes, layout: .device, orientation: orientation)
  }
}
#endif
