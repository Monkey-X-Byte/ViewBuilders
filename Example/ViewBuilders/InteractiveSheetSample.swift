//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct InteractiveSheetSample: View {

  @State private var isShowingInteractiveSheet = false
  @State private var isShowingIndicator = false
  @State private var background: Color = .pink

  var body: some View {
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show interactive sheet") {
          isShowingInteractiveSheet.toggle()
        }
        .foregroundColor(.black)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        Toggle("Show indicators: \(isShowingIndicator.description)", isOn: $isShowingIndicator)
          .toggleStyle(SwitchToggleStyle(tint: .yellow))
        ColorPicker("Background Color", selection: $background)
      }
      .foregroundColor(.white)
      .padding(.horizontal)
    }
    .interactiveSheet(isPresented: $isShowingInteractiveSheet, showsIndicator: isShowingIndicator, background: background) {
      Text("Hello World!")
    }
    .navigationTitle("Interactive Sheet Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
