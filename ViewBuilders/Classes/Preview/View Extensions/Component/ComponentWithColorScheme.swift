//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
public extension View {

  /// Preview a component with a specific `ColorScheme`.
  ///
  /// - Parameters:
  ///   - colorScheme: The ColorScheme to apply to the component.
  func previewComponentWithColorScheme(_ colorScheme: ColorScheme) -> some View {
    PreviewWithColorSchemes(content: self, colorSchemes: [colorScheme], layout: .sizeThatFits, orientation: .portrait)
  }

  /// Preview a component with all `ColorScheme`.
  func previewComponentWithColorSchemes() -> some View {
    PreviewWithColorSchemes(content: self, colorSchemes: ColorScheme.allCases, layout: .sizeThatFits, orientation: .portrait)
  } 
}
#endif
