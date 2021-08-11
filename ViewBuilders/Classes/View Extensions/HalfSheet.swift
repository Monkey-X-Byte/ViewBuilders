//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension View {

  /// Presents a half sheet when a binding to a Boolean value that you provide is true.
  ///
  /// - Parameters:
  ///   - isPresented: A binding to a Boolean value that determines whether to present the half sheet that you create in the modifier's `content` closure.
  ///   - showsIndicator: A Boolean value that determines whether the half sheet shows a grabber at the top.
  ///   - background: A `Color` that will fill the background of the half sheet.
  ///   - onDismiss: The closure to execute when dismissing the half sheet.
  ///   - content: A closure returning the content of the half sheet.
  func halfSheet<Content: View>(isPresented: Binding<Bool>, showsIndicator: Bool = true, background: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    self
      .background(InteractiveSheetView(isPresented: isPresented, content: content, showsIndicator: showsIndicator, background: background, onDismiss: onDismiss, mode: .half))
  }
}
