//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  func toaster<Content: View>(isPresented: Binding<Bool>, edge: VerticalEdge = .top, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        Toaster(content: content, edge: edge, backgroundColor: backgroundColor, onDismiss: onDismiss)
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

  func toaster<Title: View, Icon: View>(isPresented: Binding<Bool>, edge: VerticalEdge = .top, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping () -> Title, @ViewBuilder icon: @escaping () -> Icon) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        ToasterLabel(title: title, icon: icon, edge: edge, backgroundColor: backgroundColor, onDismiss: onDismiss)
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

  func toaster<Item: Identifiable, Content: View>(item: Binding<Item?>, edge: VerticalEdge = .top, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        ToasterItem(content: content, item: wrappedValue, edge: edge, backgroundColor: backgroundColor, onDismiss: onDismiss)
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

  func toaster<Item: Identifiable, Title: View, Icon: View>(item: Binding<Item?>, edge: VerticalEdge = .top, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        ToasterLabelItem(title: title, icon: icon, item: wrappedValue, edge: edge, backgroundColor: backgroundColor, onDismiss: onDismiss)
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
