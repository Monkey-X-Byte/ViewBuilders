//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct HUDBoolSample: View {

  @State private var showHUD = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    VStack(spacing: 15) {
      Button("Show HUD") {
        showHUD.toggle()
      }
      .padding()
      .background(.secondary, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
      HStack {
        Text("Vertical Edge: ")
        Spacer()
        Picker("Vertical Edge:", selection: $edge) {
          ForEach(VerticalEdge.allCases, id: \.rawValue) { edge in
            Text(edge.description.firstLetterCapitalized)
              .tag(edge)
          }
        }
        .pickerStyle(.segmented)
      }
      .padding(.horizontal)
    }
    .hud(isPresented: $showHUD, background: .regularMaterial, edge: edge) {
      Label("Hello World!", systemImage: "airpods")
    }
    .navigationTitle("HUD Binding<Bool> Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
