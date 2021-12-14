//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
public extension View {

  /// Preview a component with a specific `DynamicTypeSize`.
  ///
  /// - Parameters:
  ///   - dynamicTypeSize: The DynamicTypeSize to apply to the component.
  func previewComponentWithDynamicTypeSize(_ dynamicTypeSize: DynamicTypeSize) -> some View {
    PreviewWithDynamicTypeSizes(content: self, dynamicTypeSizes: [dynamicTypeSize], layout: .sizeThatFits, orientation: .portrait)
  }

  /// Preview a component with multiple `DynamicTypeSize`.
  ///
  /// - Parameters:
  ///   - dynamicTypeSizes: The DynamicTypeSizes to apply to the component.
  func previewComponentWithDynamicTypeSizes(_ dynamicTypeSizes: [DynamicTypeSize] = DynamicTypeSize.allCases) -> some View {
    PreviewWithDynamicTypeSizes(content: self, dynamicTypeSizes: dynamicTypeSizes, layout: .sizeThatFits, orientation: .portrait)
  }
}
#endif
