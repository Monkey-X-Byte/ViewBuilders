//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct HapticFeedbackSample: View {

  @Environment(\.hapticFeedback) private var hapticFeedback

  var body: some View {
    List(HapticFeedback.FeedbackType.allCases, id: \.description) { feedback in
      Button(feedback.description) {
        hapticFeedback(feedback)
      }
    }
    .navigationTitle("Haptic Feedback Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
