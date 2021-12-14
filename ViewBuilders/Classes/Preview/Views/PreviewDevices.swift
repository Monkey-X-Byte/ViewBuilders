//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
/// A `View` that displays a content with the desired device and orientation.
struct PreviewDevices<Content: View>: View {

  let content: Content
  let devices: [Device]
  let orientation: InterfaceOrientation

  var body: some View {
    ForEach(devices, id: \.rawValue) { device in
      content
        .previewDevice(SwiftUI.PreviewDevice(rawValue: device.rawValue))
        .previewInterfaceOrientation(orientation)
        .previewDisplayName(device.rawValue)
    }
  }
}
#endif
