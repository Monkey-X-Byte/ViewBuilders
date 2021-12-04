//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import ViewBuilders

extension UINotificationFeedbackGenerator.FeedbackType {

  var description: String {
    switch self {
    case .error:
      return "error"
    case .success:
      return "success"
    case .warning:
      return "warning"
    }
  }
}
