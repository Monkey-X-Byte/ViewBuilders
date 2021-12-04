//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct NavigationActionSample: View {

  @State private var showSample = false

  var body: some View {
    Button("Show NavigationAction sample") {
      showSample.toggle()
    }
    .sheet(isPresented: $showSample) {
      NavigationActionView()
    }
    .onAppear { showSample.toggle() }
  }
}

fileprivate struct NavigationActionView: View {

  @Environment(\.navigation) private var navigation
  @State private var isNavigationActive = false

  var body: some View {
    NavigationView {
      VStack(spacing: 20) {
        Text("Root View")
          .font(.title)
        NavigationLink(isActive: $isNavigationActive) {
          NavigationActionPushedView()
        } label: {
          Text("Push a screen")
        }
      }
    }
    .environment(\.navigation.isActive, $isNavigationActive)
  }
}

fileprivate struct NavigationActionPushedView: View {

  @Environment(\.navigation) private var navigation

  var body: some View {
    VStack(spacing: 30) {
      Button("Pop to Root view") {
        navigation.popToRoot()
      }
      NavigationLink {
        NavigationActionPushedView()
      } label: {
        Text("Push another view")
      }
    }
  }
}
