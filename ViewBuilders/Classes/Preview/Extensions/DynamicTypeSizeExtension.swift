//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
extension DynamicTypeSize {

  /// The description for a given `DynamicTypeSize`.
  var description: String {
    switch self {
    case .xSmall:
      return "XSmall"
    case .small:
      return "Small"
    case .medium:
      return "Medium"
    case .large:
      return "Large"
    case .xLarge:
      return "XLarge"
    case .xxLarge:
      return "XXLarge"
    case .xxxLarge:
      return "XXXLarge"
    case .accessibility1:
      return "Accessibility 1"
    case .accessibility2:
      return "Accessibility 2"
    case .accessibility3:
      return "Accessibility 3"
    case .accessibility4:
      return "Accessibility 4"
    case .accessibility5:
      return "Accessibility 5"
    }
  }
}
#endif
