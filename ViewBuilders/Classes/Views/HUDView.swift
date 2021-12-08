//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

/// A `View` that's display a HUD (heads-up display).
struct HUD<Content: View, Background: ShapeStyle>: View {

  @ViewBuilder let content: Content
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      content
        .padding()
        .background(background)
        .clipShape(Capsule())
        .shadow(color: .black.opacity(0.20), radius: 20, x: 0, y: 5)
        .animation(.default.speed(0.5))
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a (heads-up display).
struct HUDItem<Item: Identifiable, Content: View, Background: ShapeStyle>: View {

  let content: Content
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?

  init(@ViewBuilder content: @escaping (Item) -> Content, item: Item, background: Background, edge: VerticalEdge, onDismiss: (() -> Void)?) {
    self.content = content(item)
    self.background = background
    self.edge = edge
    self.onDismiss = onDismiss
  }

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      content
        .padding()
        .background(background)
        .clipShape(Capsule())
        .shadow(color: .black.opacity(0.20), radius: 20, x: 0, y: 5)
        .animation(.default.speed(0.5))
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}
