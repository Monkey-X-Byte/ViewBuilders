//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

struct ExampleView: View {

  var body: some View {
    NavigationView {
      List(Sample.allCases, rowContent: \.content)
        .navigationTitle("ViewBuilders Example")
    }
  }
}

enum Sample: String, Identifiable, CaseIterable {
  case hapticFeedback = "haptic feedback"
  case interactiveSheet = "interactive sheet"
  case halfSheet = "half sheet"
  case hudBool = "HUD Binding<Bool>"
  case hudItem = "HUD Binding<Item?>"
  case toasterBoolViewBuilder = "toaster Binding<Bool> with one @ViewBuilder"
  case toasterBoolViewBuilders = "toaster Binding<Bool> with two @ViewBuilder"
  case toasterItemViewBuilder = "toaster Binding<Item?> with one @ViewBuilder"
  case toasterItemViewBuilders = "toaster Binding<Item?> with two @ViewBuilder"
  case navigationAppearance = "navigation bar appearance"
  case navigationAction = "navigation action"
  case dialogBool = "dialog Binding<Bool>"
  case dialogItem = "dialog Binding<Item?>"

  var id: String { rawValue }

  @ViewBuilder var content: some View {
    switch self {
    case .hapticFeedback:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HapticFeedbackSample()
      }
    case .interactiveSheet:
      NavigationLink(rawValue.firstLetterCapitalized) {
        InteractiveSheetSample()
      }
    case .halfSheet:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HalfSheetSample()
      }
    case .hudBool:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HUDBoolSample()
      }
    case .hudItem:
      NavigationLink(rawValue.firstLetterCapitalized) {
        HUDItemSample()
      }
    case .toasterBoolViewBuilder:
      NavigationLink(rawValue.firstLetterCapitalized) {
        ToasterBoolViewBuilderSample()
      }
    case .toasterBoolViewBuilders:
      NavigationLink(rawValue.firstLetterCapitalized) {
        ToasterBoolViewBuildersSample()
      }
    case .toasterItemViewBuilder:
      NavigationLink(rawValue.firstLetterCapitalized) {
        ToasterItemViewBuilderSample()
      }
    case .toasterItemViewBuilders:
      NavigationLink(rawValue.firstLetterCapitalized) {
        ToasterItemViewBuildersSample()
      }
    case .navigationAppearance:
      NavigationLink(rawValue.firstLetterCapitalized) {
        NavigationAppearanceSample()
      }
    case .navigationAction:
      NavigationLink(rawValue.firstLetterCapitalized) {
        NavigationActionSample()
      }
    case .dialogBool:
      NavigationLink(rawValue.firstLetterCapitalized) {
        DialogBoolSample()
      }
    case .dialogItem:
      NavigationLink(rawValue.firstLetterCapitalized) {
        DialogItemSample()
      }
    }
  }
}
