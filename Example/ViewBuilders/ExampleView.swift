//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

struct ExampleView: View {

  var body: some View {
    NavigationView {
      List {
        Section {
          ForEach(Sample.EnvironmentValue.allCases, content: \.content)
        } header: {
          Text("Environment Value Samples")
            .fontWeight(.bold)
        }

        Section {
          ForEach(Sample.ViewModifiers.allCases, content: \.content)
        } header: {
          Text("View Modifier Samples")
            .fontWeight(.bold)
        }
      }
      .navigationTitle("ViewBuilders Example")
    }
  }
}

enum Sample {

  enum EnvironmentValue: String, Identifiable, CaseIterable {
    case hapticFeedback = "haptic feedback"
    case navigationAction = "navigation action"
    case currentDevice = "current device"

    var id: String { rawValue }

    @ViewBuilder var content: some View {
      NavigationLink(rawValue.firstLetterCapitalized) {
        switch self {
        case .hapticFeedback:
          HapticFeedbackSample()
        case .navigationAction:
          NavigationActionSample()
        case .currentDevice:
          CurrentDeviceSample()
        }
      }
    }
  }

  enum ViewModifiers: String, Identifiable, CaseIterable {
    case interactiveSheet = "interactive sheet"
    case halfSheet = "half sheet"
    case hudBool = "HUD Binding<Bool>"
    case hudItem = "HUD Binding<Item?>"
    case toastBoolViewBuilder = "toast Binding<Bool> with one @ViewBuilder"
    case toastBoolViewBuilders = "toast Binding<Bool> with two @ViewBuilder"
    case toastItemViewBuilder = "toast Binding<Item?> with one @ViewBuilder"
    case toastItemViewBuilders = "toast Binding<Item?> with two @ViewBuilder"
    case navigationAppearance = "navigation bar appearance"
    case dialogBool = "dialog Binding<Bool>"
    case dialogItem = "dialog Binding<Item?>"

    var id: String { rawValue }

    @ViewBuilder var content: some View {
      NavigationLink(rawValue.firstLetterCapitalized) {
        switch self {
        case .interactiveSheet:
          InteractiveSheetSample()
        case .halfSheet:
          HalfSheetSample()
        case .hudBool:
          HUDBoolSample()
        case .hudItem:
          HUDItemSample()
        case .toastBoolViewBuilder:
          ToastBoolViewBuilderSample()
        case .toastBoolViewBuilders:
          ToastBoolViewBuildersSample()
        case .toastItemViewBuilder:
          ToastItemViewBuilderSample()
        case .toastItemViewBuilders:
          ToastItemViewBuildersSample()
        case .navigationAppearance:
          NavigationAppearanceSample()
        case .dialogBool:
          DialogBoolSample()
        case .dialogItem:
          DialogItemSample()
        }
      }
    }
  }
}
