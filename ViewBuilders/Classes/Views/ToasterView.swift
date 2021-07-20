//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

struct Toaster<Content: View>: View {

  @Environment(\.currentDevice) var currentDevice
  @ViewBuilder let content: Content
  let edge: VerticalEdge
  let backgroundColor: Color
  let onDismiss: (() -> Void)?

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      content
        .padding(.horizontal)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(backgroundColor)
        .cornerRadius(currentDevice.isPad ? 16 : 8)
        .padding(.horizontal)
        .animation(.default.speed(0.5))
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

struct ToasterLabel<Title: View, Icon: View>: View {

  @Environment(\.currentDevice) var currentDevice
  @ViewBuilder let title: Title
  @ViewBuilder let icon: Icon
  let edge: VerticalEdge
  let backgroundColor: Color
  let onDismiss: (() -> Void)?

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      Label { title } icon: { icon }
      .padding(.horizontal)
      .padding(.vertical, 20)
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(backgroundColor)
      .cornerRadius(currentDevice.isPad ? 16 : 8)
      .padding(.horizontal)
      .animation(.default.speed(0.5))
      .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

struct ToasterItem<Item: Identifiable, Content: View>: View {

  @Environment(\.currentDevice) var currentDevice
  let content: Content
  let edge: VerticalEdge
  let backgroundColor: Color
  let onDismiss: (() -> Void)?

  init(@ViewBuilder content: @escaping (Item) -> Content, item: Item, edge: VerticalEdge, backgroundColor: Color, onDismiss: (() -> Void)?) {
    self.content = content(item)
    self.edge = edge
    self.backgroundColor = backgroundColor
    self.onDismiss = onDismiss
  }

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      content
        .padding(.horizontal)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(backgroundColor)
        .cornerRadius(currentDevice.isPad ? 16 : 8)
        .padding(.horizontal)
        .animation(.default.speed(0.5))
        .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}

struct ToasterLabelItem<Item: Identifiable, Title: View, Icon: View>: View {

  @Environment(\.currentDevice) var currentDevice
  let title: Title
  let icon: Icon
  let edge: VerticalEdge
  let backgroundColor: Color
  let onDismiss: (() -> Void)?

  init(@ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon, item: Item, edge: VerticalEdge, backgroundColor: Color, onDismiss: (() -> Void)?) {
    self.title = title(item)
    self.icon = icon(item)
    self.edge = edge
    self.backgroundColor = backgroundColor
    self.onDismiss = onDismiss
  }

  var body: some View {
    VStack {
      if edge == .bottom { Spacer() }
      Label { title } icon: { icon }
      .padding(.horizontal)
      .padding(.vertical, 20)
      .frame(maxWidth: .infinity, alignment: .leading)
      .background(backgroundColor)
      .cornerRadius(currentDevice.isPad ? 16 : 8)
      .padding(.horizontal)
      .animation(.default.speed(0.5))
      .onDisappear(perform: onDismiss)
      if edge == .top { Spacer() }
    }
  }
}
