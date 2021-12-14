# HapticFeedback

## Description
An `EnvironmentValue` that creates and triggers haptic feedbacks.

## Declaration
```swift
public struct HapticFeedback {

  public enum FeedbackType: Hashable {
    case impact(style: UIImpactFeedbackGenerator.FeedbackStyle)
    case selection
    case notification(type: UINotificationFeedbackGenerator.FeedbackType)
  }

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
    static let defaultValue = HapticFeedback()
  }
}

public extension EnvironmentValues {

  var hapticFeedback: HapticFeedback {
    self[HapticFeedback.EnvironmentKey.self]
  }
}
```