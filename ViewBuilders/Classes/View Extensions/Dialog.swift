//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  /// Presents a custom dialog when a binding to a Boolean value that you provide is true.
  ///
  /// If you want to add a button that dismisses the dialog, please add `withAnimation` to make sure that the animation is played.
  /// When adding such a button, you may want to set `interactionMode` to `none`.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the dialog that you create in the modifier's `content` closure.
  ///   - background: A ShapeStyle that will fill the background of the dialog.
  ///   - edge: The vertical edge where the dialog will come from.
  ///   - interactionMode: The type of interaction the user can do to make the dialog disappear.
  ///   - onDismiss: The closure to execute when dismissing the dialog.
  ///   - content: A closure returning the content of the dialog.
  func dialog<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .bottom, interactionMode: DialogInteractionMode = .all, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        Dialog(content: content, background: background, edge: edge, interactionMode: interactionMode, onDismiss: onDismiss) { withAnimation { isPresented.wrappedValue = false } }
        .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
        .zIndex(999)
      }
    }
  }

  /// Presents a custom dialog using the given item as a data source for the dialog's content.
  ///
  /// If you want to add a button that dismisses the dialog, please add `withAnimation` to make sure that the animation is played.
  /// When adding such a button, you may want to set `interactionMode` to `none`.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the dialog. When `item` is non-`nil`, the system passes the item's content to the modifier's closure.
  ///     You display this content in a dialog that you create that the system displays to the user. If `item` changes, the system dismisses the dialog and replaces it with a new one
  ///     using the same process.
  ///   - background: A ShapeStyle that will fill the background of the dialog.
  ///   - edge: The vertical edge where the dialog will come from.
  ///   - interactionMode: The type of interaction the user can do to make the dialog disappear.
  ///   - onDismiss: The closure to execute when dismissing the dialog.
  ///   - content: A closure returning the content of the dialog.
  func dialog<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .bottom, interactionMode: DialogInteractionMode = .all, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        DialogItem(content: content, item: wrappedValue, background: background, edge: edge, interactionMode: interactionMode, onDismiss: onDismiss) { withAnimation { item.wrappedValue = nil } }
        .transition(.move(edge: edge.convertedToEdge).combined(with: .opacity))
        .zIndex(999)
      }
    }
  }
}
