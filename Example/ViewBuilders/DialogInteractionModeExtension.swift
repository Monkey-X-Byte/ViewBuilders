//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import Foundation
import ViewBuilders

extension DialogInteractionMode: CaseIterable {

  var description: String {
    switch self {
    case .none:
      return "none"
    case .tapped:
      return "tapped"
    case .dragged:
      return "dragged"
    case .all:
      return "all"
    }
  }

  public static var allCases: [DialogInteractionMode] {
    return [.none, .tapped, .dragged, .all]
  }
}
