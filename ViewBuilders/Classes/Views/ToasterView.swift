//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

/// A `View` that's display a toaster.
struct Toaster<Content: View, Background: ShapeStyle>: View {

  @Environment(\.currentDevice) var currentDevice
  @ViewBuilder let content: Content
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      content
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(background)
        .cornerRadius(currentDevice.isPad ? 16 : 8)
        .padding(.horizontal)
        .animation(.default.speed(0.5))
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a toaster.
struct ToasterLabel<Title: View, Icon: View, Background: ShapeStyle>: View {

  @Environment(\.currentDevice) var currentDevice
  @ViewBuilder let title: Title
  @ViewBuilder let icon: Icon
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      Label { title } icon: { icon }
      .padding()
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(background)
      .cornerRadius(currentDevice.isPad ? 16 : 8)
      .padding(.horizontal)
      .animation(.default.speed(0.5))
      .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a toaster.
struct ToasterItem<Item: Identifiable, Content: View, Background: ShapeStyle>: View {

  @Environment(\.currentDevice) var currentDevice
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
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(background)
        .cornerRadius(currentDevice.isPad ? 16 : 8)
        .padding(.horizontal)
        .animation(.default.speed(0.5))
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a toaster.
struct ToasterLabelItem<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>: View {

  @Environment(\.currentDevice) var currentDevice
  let title: Title
  let icon: Icon
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?

  init(@ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon, item: Item, background: Background, edge: VerticalEdge, onDismiss: (() -> Void)?) {
    self.title = title(item)
    self.icon = icon(item)
    self.edge = edge
    self.background = background
    self.onDismiss = onDismiss
  }

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      Label { title } icon: { icon }
      .padding()
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(background)
      .cornerRadius(currentDevice.isPad ? 16 : 8)
      .padding(.horizontal)
      .animation(.default.speed(0.5))
      .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}
