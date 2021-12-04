//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import ViewBuilders

extension UIImpactFeedbackGenerator.FeedbackStyle {

  var description: String {
    switch self {
    case .heavy:
      return "heavy"
    case .light:
      return "light"
    case .medium:
      return "medium"
    case .rigid:
      return "rigid"
    case .soft:
      return "soft"
    }
  }
}
