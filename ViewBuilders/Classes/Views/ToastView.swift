//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

/// A `View` that's display a toast.
struct Toast<Content: View, Background: ShapeStyle>: View {

  @ViewBuilder let content: Content
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?
  @Environment(\.currentDevice) private var currentDevice

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      content
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(background)
        .cornerRadius(currentDevice.isPad ? 16 : 8)
        .padding(.horizontal)
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a toast.
struct ToastLabel<Title: View, Icon: View, Background: ShapeStyle>: View {

  @ViewBuilder let title: Title
  @ViewBuilder let icon: Icon
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?
  @Environment(\.currentDevice) private var currentDevice

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      Label { title } icon: { icon }
      .padding()
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(background)
      .cornerRadius(currentDevice.isPad ? 16 : 8)
      .padding(.horizontal)
      .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a toast.
struct ToastItem<Item: Identifiable, Content: View, Background: ShapeStyle>: View {

  let content: Content
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?
  @Environment(\.currentDevice) private var currentDevice

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
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

/// A `View` that's display a toast.
struct ToastLabelItem<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>: View {

  let title: Title
  let icon: Icon
  let background: Background
  let edge: VerticalEdge
  let onDismiss: (() -> Void)?
  @Environment(\.currentDevice) private var currentDevice

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
      .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}
