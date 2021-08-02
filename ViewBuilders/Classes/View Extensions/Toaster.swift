//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  func toaster<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        Toaster(content: content, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              withAnimation { isPresented.wrappedValue = false }
            }
          }
      }
    }
  }

  func toaster<Title: View, Icon: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping () -> Title, @ViewBuilder icon: @escaping () -> Icon) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        ToasterLabel(title: title, icon: icon, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              withAnimation { isPresented.wrappedValue = false }
            }
          }
      }
    }
  }

  func toaster<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        ToasterItem(content: content, item: wrappedValue, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              withAnimation { item.wrappedValue = nil }
            }
          }
      }
    }
  }

  func toaster<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        ToasterLabelItem(title: title, icon: icon, item: wrappedValue, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              withAnimation { item.wrappedValue = nil }
            }
          }
      }
    }
  }
}
