//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

/// The type of interaction a custom dialog can perform.
public enum DialogInteractionMode {
  case none
  case tapped
  case dragged
  case all
}

/// A `View` that's display a custom dialog.
struct Dialog<Content: View, Background: ShapeStyle>: View {

  @ViewBuilder let content: Content
  let background: Background
  let edge: VerticalEdge
  let interactionMode: DialogInteractionMode
  let onDismiss: (() -> Void)?
  let closeAction: () -> Void
  @Environment(\.currentDevice) private var currentDevice
  @Environment(\.verticalSizeClass) private var verticalSizeClass
  private var canBeTapped: Bool {
    return interactionMode == .all || interactionMode == .tapped
  }
  private var canBeDragged: Bool {
    return interactionMode == .all || interactionMode == .dragged
  }

  var body: some View {
    GeometryReader { geo in
      ZStack {
        Color.black
          .opacity(0.0000000000000000000001)
          .onTapGesture {
            guard canBeTapped else { return }
            closeAction()
          }

        content
          .padding()
          .frame(maxWidth: currentDevice.isPad ? min(geo.size.width, geo.size.height) * 0.5 : min(geo.size.width, geo.size.height) - (verticalSizeClass == .compact ? 32 : 0),
                 maxHeight: currentDevice.isPad ? min(geo.size.width, geo.size.height) * 0.5 : min(geo.size.width, geo.size.height) - (verticalSizeClass == .regular ? 32 : 0))
          .background(background, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .padding(.horizontal, currentDevice.isPad ? 0 : verticalSizeClass == .regular ? 16 : 0)
          .padding(.vertical, currentDevice.isPad ? 0 : verticalSizeClass == .compact ? 16 : 0)
          .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
          .gesture(
            DragGesture()
              .onEnded {
                let canBeDismissed = edge == .bottom ? $0.predictedEndTranslation.height > geo.size.height * 0.33 : $0.predictedEndTranslation.height < -geo.size.height * 0.33
                guard canBeDragged, canBeDismissed else { return }
                closeAction()
              }
          )
          .animation(.default)
          .onDisappear(perform: onDismiss)
      }
    }
  }
}

/// A `View` that's display a custom dialog.
struct DialogItem<Item: Identifiable, Content: View, Background: ShapeStyle>: View {

  let content: Content
  let background: Background
  let edge: VerticalEdge
  let interactionMode: DialogInteractionMode
  let onDismiss: (() -> Void)?
  let closeAction: () -> Void
  @Environment(\.currentDevice) private var currentDevice
  @Environment(\.verticalSizeClass) private var verticalSizeClass
  private var canBeTapped: Bool {
    return interactionMode == .all || interactionMode == .tapped
  }
  private var canBeDragged: Bool {
    return interactionMode == .all || interactionMode == .dragged
  }

  init(@ViewBuilder content: @escaping (Item) -> Content, item: Item, background: Background, edge: VerticalEdge, interactionMode: DialogInteractionMode, onDismiss: (() -> Void)? = nil, dismissAction: @escaping () -> Void) {
    self.content = content(item)
    self.background = background
    self.edge = edge
    self.interactionMode = interactionMode
    self.onDismiss = onDismiss
    self.closeAction = dismissAction
  }

  var body: some View {
    GeometryReader { geo in
      ZStack {
        Color.black
          .opacity(0.0000000000000000000001)
          .onTapGesture {
            guard canBeTapped else { return }
            closeAction()
          }

        content
          .padding()
          .frame(maxWidth: currentDevice.isPad ? min(geo.size.width, geo.size.height) * 0.5 : min(geo.size.width, geo.size.height) - (verticalSizeClass == .compact ? 32 : 0),
                 maxHeight: currentDevice.isPad ? min(geo.size.width, geo.size.height) * 0.5 : min(geo.size.width, geo.size.height) - (verticalSizeClass == .regular ? 32 : 0))
          .background(background, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .padding(.horizontal, currentDevice.isPad ? 0 : verticalSizeClass == .regular ? 16 : 0)
          .padding(.vertical, currentDevice.isPad ? 0 : verticalSizeClass == .compact ? 16 : 0)
          .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
          .gesture(
            DragGesture()
              .onEnded {
                let canBeDismissed = edge == .bottom ? $0.predictedEndTranslation.height > geo.size.height * 0.33 : $0.predictedEndTranslation.height < -geo.size.height * 0.33
                guard canBeDragged, canBeDismissed else { return }
                closeAction()
              }
          )
          .animation(.default)
          .onDisappear(perform: onDismiss)
      }
    }
  }
}
