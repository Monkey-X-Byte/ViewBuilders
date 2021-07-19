//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
  
  func halfSheet<Content: View>(isPresented: Binding<Bool>, showsIndicator: Bool = true, backgroundColor: Color, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View {
    self
      .background(InteractiveSheetView(isPresented: isPresented, content: content(), showsIndicator: showsIndicator, backgroundColor: backgroundColor, onDismiss: onDismiss, mode: .half))
  }
}
