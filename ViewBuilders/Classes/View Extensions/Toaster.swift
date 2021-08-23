//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  /// Presents a toaster when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the toaster that you create in the modifier's `content` closure.
  ///   - background: A ShapeStyle that will fill the background of the toaster.
  ///   - edge: The vertical edge where the toaster will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toaster.
  ///   - content: A closure returning the content of the toaster.
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

  /// Presents a toaster when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the toaster that you create in the modifier's `content` closure.
  ///   - background: A ShapeStyle that will fill the background of the toaster.
  ///   - edge: The vertical edge where the toaster will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toaster.
  ///   - title: A closure returning the title of the toaster.
  ///   - icon: A closure returning the icon of the toaster.
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

  /// Presents a toaster using the given item as a data source for the toaster's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the toaster. When `item` is non-`nil`, the system passes the item's content to the modifier's closure.
  ///     You display this content in a toaster that you create that the system displays to the user. If `item` changes, the system dismisses the toaster and replaces it with a new
  ///     using the same process.
  ///   - background: A ShapeStyle that will fill the background of the toaster.
  ///   - edge: The vertical edge where the toaster will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toaster.
  ///   - content: A closure returning the content of the toaster.
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

  /// Presents a toaster using the given item as a data source for the toaster's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the toaster. When `item` is non-`nil`, the system passes the item's content to the modifier's closure.
  ///     You display this content in a toaster that you create that the system displays to the user. If `item` changes, the system dismisses the toaster and replaces it with a new one
  ///     using the same process.
  ///   - background: A ShapeStyle that will fill the background of the toaster.
  ///   - edge: The vertical edge where the toaster will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toaster.
  ///   - title: A closure returning the title of the toaster.
  ///   - icon: A closure returning the icon of the toaster.
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
