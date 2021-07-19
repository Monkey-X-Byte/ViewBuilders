//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

struct HUDBoolSample: View {

  @State private var showHUD = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show HUD") { showHUD.toggle() }
        .foregroundColor(.black)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        HStack {
          Text("Vertical Edge: \(edge.description.firstLetterCapitalized)")
          Spacer()
          Picker("Vertical Edge: \(edge.description.firstLetterCapitalized)", selection: $edge) {
            ForEach(VerticalEdge.allCases, id: \.rawValue) { edge in
              Text(edge.description.firstLetterCapitalized)
                .tag(edge)
            }
          }
          .pickerStyle(.segmented)
        }
        .padding(.horizontal)
      }
    }
    .hud(isPresented: $showHUD, background: .regularMaterial, edge: edge) {
      Label("Hello World!", systemImage: "airpods")
    }
    .navigationTitle("HUD Binding<Bool> Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
