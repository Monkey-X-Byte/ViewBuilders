//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  /// Presents a toast when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the toast that you create in the modifier's `content` closure.
  ///   - background: A ShapeStyle that will fill the background of the toast.
  ///   - edge: The vertical edge where the toast will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toast.
  ///   - content: A closure returning the content of the toast.
  func toast<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        Toast(content: content, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              isPresented.wrappedValue = false
            }
          }
      }
    }
    .animation(.default.speed(0.5), value: isPresented.wrappedValue)
  }

  /// Presents a toast when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the toast that you create in the modifier's `content` closure.
  ///   - background: A ShapeStyle that will fill the background of the toast.
  ///   - edge: The vertical edge where the toast will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toast.
  ///   - title: A closure returning the title of the toast.
  ///   - icon: A closure returning the icon of the toast.
  func toast<Title: View, Icon: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping () -> Title, @ViewBuilder icon: @escaping () -> Icon) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        ToastLabel(title: title, icon: icon, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              isPresented.wrappedValue = false
            }
          }
      }
    }
    .animation(.default.speed(0.5), value: isPresented.wrappedValue)
  }

  /// Presents a toast using the given item as a data source for the toast's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the toast. When `item` is non-`nil`, the system passes the item's content to the modifier's closure.
  ///     You display this content in a toast that you create that the system displays to the user. If `item` changes, the system dismisses the toast and replaces it with a new
  ///     using the same process.
  ///   - background: A ShapeStyle that will fill the background of the toast.
  ///   - edge: The vertical edge where the toast will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toast.
  ///   - content: A closure returning the content of the toast.
  func toast<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        ToastItem(content: content, item: wrappedValue, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              item.wrappedValue = nil
            }
          }
      }
    }
    .animation(.default.speed(0.5), value: item.wrappedValue != nil)
  }

  /// Presents a toast using the given item as a data source for the toast's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the toast. When `item` is non-`nil`, the system passes the item's content to the modifier's closure.
  ///     You display this content in a toast that you create that the system displays to the user. If `item` changes, the system dismisses the toast and replaces it with a new one
  ///     using the same process.
  ///   - background: A ShapeStyle that will fill the background of the toast.
  ///   - edge: The vertical edge where the toast will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the toast.
  ///   - title: A closure returning the title of the toast.
  ///   - icon: A closure returning the icon of the toast.
  func toast<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        ToastLabelItem(title: title, icon: icon, item: wrappedValue, background: background, edge: edge, onDismiss: onDismiss)
          .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
          .zIndex(999)
          .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
              item.wrappedValue = nil
            }
          }
      }
    }
    .animation(.default.speed(0.5), value: item.wrappedValue != nil)
  }
}
