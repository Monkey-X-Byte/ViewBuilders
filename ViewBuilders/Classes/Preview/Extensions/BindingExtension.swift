//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

#if DEBUG
public extension Binding {

  /// A function that allows you to create dynamics Binding for the preview.
  ///
  /// - Parameters:
  ///   - value: The mocked value which is dynamic.
  static func mock(_ value: Value) -> Self {
    var value = value

    return Binding(get: { value },
                   set: { value = $0 })
  }
}
#endif
