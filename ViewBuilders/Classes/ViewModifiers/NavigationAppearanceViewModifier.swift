//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

/// A `ViewModifier` which allows you to customize the navigation bars of a `NavigationView`.
struct NavigationAppearance: ViewModifier {

  init(titleColor: Color, backgroundColor: Color, hideSeparator: Bool) {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor(titleColor)]
    navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(titleColor)]
    navBarAppearance.backgroundColor = UIColor(backgroundColor)
    if hideSeparator {
      navBarAppearance.shadowColor = .clear
    }
    UINavigationBar.appearance().standardAppearance = navBarAppearance
    UINavigationBar.appearance().compactAppearance = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
  }

  func body(content: Content) -> some View {
    content
  }
}
