//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

extension VerticalEdge {

  /// A computed property that returns the corresponding `Edge`.
  var convertedToEdge: Edge {
    switch self {
    case .top:
      return .top
    case .bottom:
      return .bottom
    }
  }
}
