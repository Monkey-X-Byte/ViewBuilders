//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
  func interactiveSheet<Content: View>(isPresented: Binding<Bool>, showsIndicator: Bool = true, background: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    self
      .background(InteractiveSheetView(isPresented: isPresented, content: content(), showsIndicator: showsIndicator, background: background, onDismiss: onDismiss, mode: .interactive))
  }
}
