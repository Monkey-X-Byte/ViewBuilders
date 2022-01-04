//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  /// Presents a HUD (heads-up display) when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the HUD that you create in the modifier's `content` closure.
  ///   - background: A ShapeStyle that will fill the background of the HUD.
  ///   - edge: The vertical edge where the HUD will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the HUD.
  ///   - content: A closure returning the content of the HUD.
  func hud<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    ZStack {
      self

      if isPresented.wrappedValue {
        HUD(content: content, background: background, edge: edge, onDismiss: onDismiss)
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

  /// Presents a HUD (heads-up display) using the given item as a data source for the HUD's content.
  ///
  /// - Parameters:
  ///   - item: A binding to an optional source of truth for the HUD. When `item` is non-`nil`, the system passes the item's content to the modifier's closure.
  ///     You display this content in a HUD that you create that the system displays to the user. If `item` changes, the system dismisses the HUD and replaces it with a new one
  ///     using the same process.
  ///   - background: A ShapeStyle that will fill the background of the HUD.
  ///   - edge: The vertical edge where the HUD will be displayed.
  ///   - onDismiss: The closure to execute when dismissing the HUD.
  ///   - content: A closure returning the content of the HUD.
  func hud<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View {
    ZStack {
      self

      if let wrappedValue = item.wrappedValue {
        HUDItem(content: content, item: wrappedValue, background: background, edge: edge, onDismiss: onDismiss)
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
