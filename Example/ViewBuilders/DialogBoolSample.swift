//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct DialogBoolSample: View {

  @State private var showDialog = false
  @State private var edge: VerticalEdge = .bottom
  @State private var interactionMode: DialogInteractionMode = .all

  var body: some View {
    VStack(spacing: 15) {
      Button("Show dialog") {
        showDialog.toggle()
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
      }
      HStack {
        Text("Interaction Mode: ")
        Spacer()
        Picker("Interaction Mode:", selection: $interactionMode) {
          ForEach(DialogInteractionMode.allCases, id: \.description) { interaction in
            Text(interaction.description.firstLetterCapitalized)
              .tag(interaction)
          }
        }
      }
    }
    .pickerStyle(.segmented)
    .padding(.horizontal)
    .dialog(isPresented: $showDialog, background: .thinMaterial, edge: edge, interactionMode: interactionMode) {
      VStack {
        Text("Welcome to a custom dialog")
          .fontWeight(.bold)
        Spacer()
        RoundedRectangle(cornerRadius: 16, style: .continuous)
          .foregroundColor(.mint.opacity(0.5))
        Spacer()
        Button("Dismiss Dialog") {
          showDialog.toggle()
        }
      }
    }
    .navigationTitle("Dialog Binding<Bool> Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
