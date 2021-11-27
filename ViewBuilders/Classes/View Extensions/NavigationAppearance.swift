//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {
  
  /// Customizes the style of the navigation bars.
  ///
  /// This modifier must be applied to the root of the NavigationView.
  /// In order to keep consistency in the design of your application, this modifier does not allow you to change the tint of the elements contained in the navigation bars.
  ///
  /// - Parameters:
  ///   - foregroundColor: The color to apply to the navigation titles.
  ///   - backgroundColor: The color that fills the background of the navigation bars.
  ///   - hideSeparator: A Boolean that indicates if the shadow is applied to the navigation bars or not.
  ///
  func navigationAppearance(titleColor: Color, backgroundColor: Color, hideSeparator: Bool = false) -> some View {
    self
      .modifier(NavigationAppearance(titleColor: titleColor, backgroundColor: backgroundColor, hideSeparator: hideSeparator))
  }
}
