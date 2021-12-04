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
      List(HapticFeedback.FeedbackType.allCases, id: \.self) { feedback in
        Button(feedback.description) {
          hapticFeedback(feedback)
        }
      }
    }
  }
}
