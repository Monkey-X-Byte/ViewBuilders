//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct NavigationAppearanceSample: View {

  @State private var showSample = false
  @State private var titleColor: Color = .red
  @State private var backgroundColor: Color = .brown
  @State private var hideSeparator = false

  var body: some View {
    VStack {
      Toggle("Hide Separator", isOn: $hideSeparator)
      ColorPicker("Title color", selection: $titleColor)
      ColorPicker("Background color", selection: $backgroundColor)
      Button("Show Navigation appearance sample") {
        showSample.toggle()
      }
    }
    .padding(.horizontal)
    .sheet(isPresented: $showSample) {
      NavigationAppearanceView(titleColor: titleColor, backgroundColor: backgroundColor, hideSeparator: hideSeparator)
    }
  }
}

fileprivate struct NavigationAppearanceView: View {

  var titleColor: Color
  var backgroundColor: Color
  var hideSeparator: Bool

  var body: some View {
    NavigationView {
      ZStack {
        Color.orange.ignoresSafeArea()
        NavigationLink(destination: NavigationAppearancePushedView()) {
          Text("Push a view")
        }
      }
      .navigationTitle("Navigation appearance")
      .navigationAppearance(titleColor: titleColor, backgroundColor: backgroundColor, hideSeparator: hideSeparator)
      .toolbar {
        ToolbarItem {
          Button {} label: { Image(systemName: "info.circle") }
        }
      }
    }
  }
}

fileprivate struct NavigationAppearancePushedView: View {

  var body: some View {
    ZStack {
      Color.orange.ignoresSafeArea()
      NavigationLink(destination: NavigationAppearancePushedView()) {
        Text("Push another view")
      }
    }
    .navigationTitle("Navigation appearance")
    .navigationBarTitleDisplayMode(.inline)
    .toolbar {
      ToolbarItem {
        Button {} label: { Image(systemName: "info.circle") }
      }
    }
  }
}
