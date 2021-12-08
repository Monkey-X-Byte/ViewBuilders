//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct ToasterBoolViewBuilderSample: View {

  @State private var showToaster = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    VStack(spacing: 15) {
      Button("Show Toaster") {
        showToaster.toggle()
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
    .toaster(isPresented: $showToaster, background: .red, edge: edge) {
      Label("Hello World!", systemImage: "airpods")
    }
    .navigationTitle("Toaster Binding<Bool> with one @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct ToasterBoolViewBuildersSample: View {

  @State private var showToaster = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    VStack(spacing: 15) {
      Button("Show Toaster") {
        showToaster.toggle()
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
    .toaster(isPresented: $showToaster, background: .red, edge: edge) {
      Text("Hello World!")
    } icon: {
      Image(systemName: "airpods")
    }
    .navigationTitle("Toaster Binding<Bool> with two @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
