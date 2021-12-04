//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public struct HapticFeedback {

  public enum FeedbackType: Hashable {
    case impact(style: UIImpactFeedbackGenerator.FeedbackStyle)
    case selection
    case notification(type: UINotificationFeedbackGenerator.FeedbackType)
  }

  /// Creates and triggers an haptic feedback.
  ///
  /// - Parameters:
  ///   - feedback: The type of feedback that you want to trigger.
  public func callAsFunction(_ feedback: FeedbackType) {
    switch feedback {
    case .impact(let style):
      let feedback = UIImpactFeedbackGenerator(style: style)
      feedback.prepare()
      feedback.impactOccurred()
    case .selection:
      let feedback = UISelectionFeedbackGenerator()
      feedback.prepare()
      feedback.selectionChanged()
    case .notification(let type):
      let feedback = UINotificationFeedbackGenerator()
      feedback.prepare()
      feedback.notificationOccurred(type)
    }
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    /// The default value for this `EnvironmentValue`.
    static let defaultValue = HapticFeedback()
  }
}

public extension EnvironmentValues {

  /// An `EnvironmentValue` that creates and triggers haptic feedbacks.
  var hapticFeedback: HapticFeedback {
    self[HapticFeedback.EnvironmentKey.self]
  }
}
