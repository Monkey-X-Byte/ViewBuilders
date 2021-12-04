//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import ViewBuilders

extension HapticFeedback.FeedbackType: CaseIterable {

  var description: String {
    switch self {
    case .impact(let style):
      return "impact : " + style.description
    case .selection:
      return "selection"
    case .notification(let type):
      return "notification : " + type.description
    }
  }

  public static var allCases: [HapticFeedback.FeedbackType] {
    return [.impact(style: .heavy),
            .impact(style: .light),
            .impact(style: .medium),
            .impact(style: .rigid),
            .impact(style: .soft),
            .selection,
            .notification(type: .error),
            .notification(type: .success),
            .notification(type: .warning)]
  }
}
