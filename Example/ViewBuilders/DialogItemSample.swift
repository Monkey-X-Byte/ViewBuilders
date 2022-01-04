//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct DialogItemSample: View {

  @StateObject private var viewModel = DialogItemViewModel()

  var body: some View {
    VStack(spacing: 15) {
      Button("Show dialog") {
        viewModel.item = .label(text: "Welcome to a custom dialog")
      }
      .padding()
      .background(.secondary, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
      HStack {
        Text("Vertical Edge: ")
        Spacer()
        Picker("Vertical Edge:", selection: $viewModel.edge) {
          ForEach(VerticalEdge.allCases, id: \.rawValue) { edge in
            Text(edge.description.firstLetterCapitalized)
              .tag(edge)
          }
        }
      }
      HStack {
        Text("Interaction Mode: ")
        Spacer()
        Picker("Interaction Mode:", selection: $viewModel.interactionMode) {
          ForEach(DialogInteractionMode.allCases, id: \.description) { interaction in
            Text(interaction.description.firstLetterCapitalized)
              .tag(interaction)
          }
        }
      }
    }
    .pickerStyle(.segmented)
    .padding(.horizontal)
    .dialog(item: $viewModel.item, background: .thinMaterial, edge: viewModel.edge, interactionMode: viewModel.interactionMode) { item in
      VStack {
        if case .label(let text) = item {
          Text(text)
            .fontWeight(.bold)
        } else {
          Text("Welcome !")
            .fontWeight(.bold)
        }
        Spacer()
        RoundedRectangle(cornerRadius: 16, style: .continuous)
          .foregroundColor(.mint.opacity(0.5))
        Spacer()
        Button("Dismiss Dialog") {
          viewModel.item = nil
        }
      }
    }
    .navigationTitle("Dialog Binding<Item?> Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

fileprivate final class DialogItemViewModel: ObservableObject {

  @Published var item: DialogItemSampleCase?
  @Published var edge: VerticalEdge = .bottom
  @Published var interactionMode: DialogInteractionMode = .all

  enum DialogItemSampleCase: Identifiable {
    case label(text: String)

    var id: String {
      switch self {
      case .label(let text):
        return text
      }
    }
  }
}
