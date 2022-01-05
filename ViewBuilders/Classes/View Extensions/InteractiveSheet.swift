//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  /// Presents an interactive sheet when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the interactive sheet that you create in the modifier's `content` closure.
  ///   - showsIndicator: A Boolean value that determines whether the interactive sheet shows a grabber at the top.
  ///   - background: A Color that will fill the background of the interactive sheet.
  ///   - onDismiss: The closure to execute when dismissing the interactive sheet.
  ///   - content: A closure returning the content of the interactive sheet.
  func interactiveSheet<Content: View>(isPresented: Binding<Bool>, showsIndicator: Bool = true, background: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    self
      .background(InteractiveSheet(isPresented: isPresented, content: content, showsIndicator: showsIndicator, background: background, onDismiss: onDismiss, mode: .interactive))
  }
}
