//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct HUDItemSample: View {

  @StateObject private var viewModel = HUDItemViewModel()

  var body: some View {
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show HUD") {
          viewModel.item = .label(text: "Hello World!", symbol: "airpods")
        }
        .foregroundColor(.black)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        HStack {
          Text("Edge: \(viewModel.edge.description.firstLetterCapitalized)")
          Spacer()
          Picker("Edge: \(viewModel.edge.description.firstLetterCapitalized)", selection: $viewModel.edge) {
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
    .hud(item: $viewModel.item, background: .regularMaterial, edge: viewModel.edge) { item in
      if case let .label(text, symbol) = item {
        Label(text, systemImage: symbol)
      } else {
        Label("Item uknowned", systemImage: "xmark")
      }
    }
    .navigationTitle("HUD Binding<Item?> Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

fileprivate final class HUDItemViewModel: ObservableObject {

  @Published var item: HUDItemSampleCase?
  @Published var edge: VerticalEdge = .top

  enum HUDItemSampleCase: Identifiable {
    case label(text: String, symbol: String)

    var id: String {
      switch self {
      case .label(let text, let symbol):
        return text + symbol
      }
    }
  }
}
