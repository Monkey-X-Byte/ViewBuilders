//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct CurrentDeviceSample: View {

  @Environment(\.currentDevice) private var currentDevice
  private var deviceDescription: String {
    return currentDevice.isPad ? "pad" : "phone"
  }

  var body: some View {
    VStack(spacing: 15) {
      Text("Current device is a \(deviceDescription)")
      Text("If you're on a pad this text is red, on a phone this text is green")
        .multilineTextAlignment(.center)
        .foregroundColor(currentDevice.isPad ? .red : .green)
    }
    .navigationTitle("Current Device Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
