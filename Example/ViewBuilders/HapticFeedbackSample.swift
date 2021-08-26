//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct HapticFeedbackSample: View {

  @Environment(\.hapticFeedback) private var hapticFeedback

  var body: some View {
    VStack {
      Text("Tap on a row to trigger the haptic feedback")
      List(HapticFeedback.FeedbackType.allCases, id: \.self) { feedbackType in
        Button(feedbackType.description) { hapticFeedback(feedbackType) }
      }
      .onAppear {
        hapticFeedback(.notification(type: .error))
      }
    }
  }
}

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
    return [.impact(style: .heavy), .impact(style: .light), .impact(style: .medium), .impact(style: .rigid), .impact(style: .soft),
            .selection, .notification(type: .error), .notification(type: .success), .notification(type: .warning)]
  }
}

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
