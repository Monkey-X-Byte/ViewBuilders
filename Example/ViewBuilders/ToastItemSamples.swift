//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct ToastItemViewBuilderSample: View {

  @StateObject private var viewModel = ToastItemViewModel()

  var body: some View {
    VStack(spacing: 15) {
      Button("Show Toast") {
        viewModel.item = .sample(text: "Hello World!", symbol: "airpods")
      }
      .padding()
      .background(.secondary, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
      HStack {
        Text("Vertical Edge:")
        Spacer()
        Picker("Vertical Edge: ", selection: $viewModel.edge) {
          ForEach(VerticalEdge.allCases, id: \.rawValue) { edge in
            Text(edge.description.firstLetterCapitalized)
              .tag(edge)
          }
        }
        .pickerStyle(.segmented)
      }
      .padding(.horizontal)
    }
    .toast(item: $viewModel.item, background: .orange, edge: viewModel.edge) { item in
      if case let .sample(text, symbol) = item {
        Label(text, systemImage: symbol)
      } else {
        Label("Item uknowned", systemImage: "xmark")
      }
    }
    .navigationTitle("Toast Binding<Item?> with one @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ToastItemViewBuildersSample: View {

  @StateObject private var viewModel = ToastItemViewModel()

  var body: some View {
    VStack(spacing: 15) {
      Button("Show Toast") {
        viewModel.item = .sample(text: "Hello World!", symbol: "airpods")
      }
      .padding()
      .background(.secondary, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
      HStack {
        Text("Vertical Edge: ")
        Spacer()
        Picker("Vertical Edge: ", selection: $viewModel.edge) {
          ForEach(VerticalEdge.allCases, id: \.rawValue) { edge in
            Text(edge.description.firstLetterCapitalized)
              .tag(edge)
          }
        }
        .pickerStyle(.segmented)
      }
      .padding(.horizontal)
    }
    .toast(item: $viewModel.item, background: .orange, edge: viewModel.edge) { item in
      if case .sample(let text, _) = item {
        Text(text)
      } else {
        Text("Item uknowned")
      }
    } icon: { item in
      if case .sample(_, let symbol) = item {
        Image(systemName: symbol)
      } else {
        Image(systemName: "xmark")
      }
    }
    .navigationTitle("Toast Binding<Item?> with two @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

fileprivate final class ToastItemViewModel: ObservableObject {

  @Published var item: ToastSampleCase?
  @Published var edge: VerticalEdge = .top

  enum ToastSampleCase: Identifiable {
    case sample(text: String, symbol: String)

    var id: String {
      switch self {
      case .sample(let text, let symbol):
        return text + symbol
      }
    }
  }
}
