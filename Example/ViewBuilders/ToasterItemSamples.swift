//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

final class ToasterItemViewModel: ObservableObject {

  @Published var item: ToasterSampleCase?
  @Published var edge: VerticalEdge = .top

  enum ToasterSampleCase: Identifiable {
    case sample(text: String, symbol: String)

    var id: UUID { UUID() }
  }
}

struct ToasterItemViewBuilderSample: View {

  @StateObject private var viewModel = ToasterItemViewModel()

  var body: some View {
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show Toaster") { viewModel.item = .sample(text: "Hello World!", symbol: "airpods") }
        .foregroundColor(.black)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        HStack {
          Text("Vertical Edge: \(viewModel.edge.description.firstLetterCapitalized)")
          Spacer()
          Picker("Vertical Edge: \(viewModel.edge.description.firstLetterCapitalized)", selection: $viewModel.edge) {
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
    .toaster(item: $viewModel.item, backgroundColor: .orange, edge: viewModel.edge) { item in
      if case let .sample(text, symbol) = item {
        Label(text, systemImage: symbol)
      } else {
        Label("Item uknowned", systemImage: "xmark")
      }
    }
    .navigationTitle("Toaster Binding<Item?> with one @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ToasterItemViewBuildersSample: View {

  @StateObject private var viewModel = ToasterItemViewModel()

  var body: some View {
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show Toaster") { viewModel.item = .sample(text: "Hello World!", symbol: "mic") }
        .foregroundColor(.black)
        .padding()
        .background(.white, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        HStack {
          Text("Vertical Edge: \(viewModel.edge.description.firstLetterCapitalized)")
          Spacer()
          Picker("Vertical Edge: \(viewModel.edge.description.firstLetterCapitalized)", selection: $viewModel.edge) {
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
    .toaster(item: $viewModel.item, backgroundColor: .orange, edge: viewModel.edge) { item in
      if case .sample(let text, _) = item {
        Text(text)
          .fontWeight(.bold)
          .foregroundColor(.black)
      } else {
        Text("Item uknowned")
          .foregroundColor(.red)
      }
    } icon: { item in
      if case .sample(_, let symbol) = item {
        Image(systemName: symbol)
          .font(.system(size: 30, weight: .regular))
          .symbolVariant(.fill.circle)
          .symbolRenderingMode(.palette)
          .foregroundStyle(
            Color.white.opacity(0.8),
            Color.blue,
            LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
          )
      } else {
        Image(systemName: "xmark")
          .font(.system(size: 30, weight: .bold))
          .foregroundColor(.red)
      }
    }
    .navigationTitle("Toaster Binding<Item?> with two @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
