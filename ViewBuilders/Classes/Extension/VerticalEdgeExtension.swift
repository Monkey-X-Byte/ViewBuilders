//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public extension VerticalEdge {

  var convertedToEdge: Edge {
    switch self {
    case .top:
      return .top
    case .bottom:
      return .bottom
    }
  }
}