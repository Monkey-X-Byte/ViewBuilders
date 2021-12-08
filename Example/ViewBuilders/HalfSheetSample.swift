//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct HalfSheetSample: View {

  @State private var isShowingHalfSheet = false
  @State private var isShowingIndicator = false
  @State private var background: Color = .pink

  var body: some View {
    VStack(spacing: 15) {
      Button("Show half sheet") {
        isShowingHalfSheet.toggle()
      }
      .padding()
      .background(.secondary, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
      Toggle("Show indicators: \(isShowingIndicator.description)", isOn: $isShowingIndicator)
        .toggleStyle(SwitchToggleStyle(tint: .yellow))
      ColorPicker("Background Color", selection: $background)
    }
    .padding(.horizontal)
    .halfSheet(isPresented: $isShowingHalfSheet, showsIndicator: isShowingIndicator, background: background) {
      Text("Hello World!")
    }
    .navigationTitle("Half Sheet Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
