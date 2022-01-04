//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct ToastBoolViewBuilderSample: View {

  @State private var showToast = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    VStack(spacing: 15) {
      Button("Show Toast") {
        showToast.toggle()
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
    .toast(isPresented: $showToast, background: .red, edge: edge) {
      Label("Hello World!", systemImage: "airpods")
    }
    .navigationTitle("Toast Binding<Bool> with one @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ToastBoolViewBuildersSample: View {

  @State private var showToast = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    VStack(spacing: 15) {
      Button("Show Toast") {
        showToast.toggle()
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
    .toast(isPresented: $showToast, background: .red, edge: edge) {
      Text("Hello World!")
    } icon: {
      Image(systemName: "airpods")
    }
    .navigationTitle("Toast Binding<Bool> with two @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
