//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

struct ToasterBoolViewBuilderSample: View {

  @State private var showToaster = false
  @State private var edge: VerticalEdge = .top

  var body: some View {
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show Toaster") { showToaster.toggle() }
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
    ZStack {
      LinearGradient(colors: [.blue, .indigo, .purple], startPoint: .leading, endPoint: .trailing)
        .opacity(0.33)
        .ignoresSafeArea()
      VStack(spacing: 15) {
        Button("Show Toaster") { showToaster.toggle() }
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
    .toaster(isPresented: $showToaster, background: .red, edge: edge) {
      Text("Hello World!")
        .fontWeight(.bold)
        .foregroundColor(.black)
    } icon: {
      Image(systemName: "mic")
        .font(.system(size: 30, weight: .regular))
        .symbolVariant(.fill.circle)
        .symbolRenderingMode(.palette)
        .foregroundStyle(
          Color.white.opacity(0.8),
          Color.blue,
          LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
    }
    .navigationTitle("Toaster Binding<Bool> with two @ViewBuilder Sample")
    .navigationBarTitleDisplayMode(.inline)
  }
}
