//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import Foundation

extension String {

  static let empty = ""

  var firstLetterCapitalized: String { capitalizingFirstLetter() }

  func capitalizingFirstLetter() -> String {
    return prefix(1).capitalized + dropFirst()
  }
}
