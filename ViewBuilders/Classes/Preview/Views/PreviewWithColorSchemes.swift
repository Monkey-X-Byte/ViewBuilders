//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
/// A `View` that displays a content with the desired color scheme, layout and orientation.
struct PreviewWithColorSchemes<Content: View>: View {

  let content: Content
  let colorSchemes: [ColorScheme]
  let layout: PreviewLayout
  let orientation: InterfaceOrientation

  var body: some View {
    ForEach(colorSchemes, id: \.description) { colorScheme in
      content
        .previewLayout(layout)
        .previewInterfaceOrientation(orientation)
        .preferredColorScheme(colorScheme)
        .previewDisplayName(colorScheme.description)
    }
  }
}
#endif
