//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

public struct NavigationAction {

  /// A property that injects the `NavigationLink` binding into the view hierarchy.
  public var isActive: Binding<Bool> = .constant(false)

  /// Pops all the views in the navigation stack except the root view.
  public func popToRoot() {
    isActive.wrappedValue.toggle()
  }

  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    /// The default value for this `EnvironmentValue`.
    static let defaultValue = NavigationAction()
  }
}

public extension EnvironmentValues {

  /// An `EnvironmentValue` that allows you to `popToRoot` without having to pass a `Binding` to each sub-view.
  ///
  /// When you create a `NavigationView` and want to be able to pop to root, you must use a `NavigationLink` with the `isActive` parameter.
  /// You need to set the environment property `isActive` with this binding as follows: `environment(\.navigation.isActive, $isNavigationActive)`.
  var navigation: NavigationAction {
    get {
      self[NavigationAction.EnvironmentKey.self]
    } set {
      self[NavigationAction.EnvironmentKey.self] = newValue
    }
  }
}
