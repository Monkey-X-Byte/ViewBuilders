//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
/// A `View` that displays a content with the desired dynamic type size, layout and orientation.
struct PreviewWithDynamicTypeSizes<Content: View>: View {

  let content: Content
  let dynamicTypeSizes: [DynamicTypeSize]
  let layout: PreviewLayout
  let orientation: InterfaceOrientation

  var body: some View {
    ForEach(dynamicTypeSizes, id: \.description) { dynamicTypeSize in
      content
        .previewLayout(layout)
        .previewInterfaceOrientation(orientation)
        .environment(\.dynamicTypeSize, dynamicTypeSize)
        .previewDisplayName(dynamicTypeSize.description)
    }
  }
}
#endif
