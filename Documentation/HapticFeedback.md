# HapticFeedback

## Description 
An `EnvironmentValue` that creates and triggers haptic feedbacks.

## Declaration
``` swift
public struct HapticFeedback {

  public enum FeedbackType: Hashable {
    case impact(style: UIImpactFeedbackGenerator.FeedbackStyle)
    case selection
    case notification(type: UINotificationFeedbackGenerator.FeedbackType)
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    /// The default value for this `EnvironmentValue`.
    static let defaultValue = HapticFeedback()
  }


  /// A function that creates and triggers an haptic feedback.
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
}
```

## Summary
- First, we have to create an instance of `HapticFeeback` as an [`EnvironmentValue`](https://developer.apple.com/documentation/swiftui/environmentvalues). We can do so like this : 
``` swift
@Environment(\.hapticFeedback) var hapticFeedback
```
- Then, thanks to the power of [ `callAsFunction`](https://www.donnywals.com/how-and-when-to-use-callasfunction-in-swift-5-2/) we can create and trigger an haptic feedback like this : 
``` swift
hapticFeedback(.impact(style: .heavy))
hapticFeedback(.selection)
hapticFeedback(.notification(type: .error))
```
