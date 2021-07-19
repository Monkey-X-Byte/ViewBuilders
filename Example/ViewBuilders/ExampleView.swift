//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI
import ViewBuilders

struct ExampleView: View {

  var body: some View {
    NavigationView {
      List(Sample.allCases, rowContent: \.content)
        .navigationTitle("ViewBuilders Example")
    }
  }
}

enum Sample: String, Identifiable, CaseIterable {
  case halfSheet = "half sheet"
  case interactiveSheet = "interactive sheet"
  case hudBool = "HUD Binding<Bool>"
  case hudItem = "HUD Binding<Item?>"

  var id: String { rawValue }

  @ViewBuilder var content: some View {
    switch self {
    case .halfSheet:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HalfSheetSample()
      }
    case .interactiveSheet:
      NavigationLink(rawValue.firstLetterCapitalized) {
        InteractiveSheetSample()
      }
    case .hudBool:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HUDBoolSample()
      }
    case .hudItem:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HUDItemSample()
      }
    }
  }
}

struct ExampleView_Previews: PreviewProvider {

  static var previews: some View {
    ExampleView()
  }
}
