# NavigationAction

## Description 
An `EnvironmentValue` that allows you to `popToRoot` without having to pass a `Binding` to each sub-view.

## Discussion
When you create a `NavigationView` and want to be able to pop to root, you must use a `NavigationLink` with the `isActive` parameter.
You need to set the environment property `isActive` with this binding as follows: `environment(\.navigation.isActive, $isNavigationActive)`.

## Declaration
``` swift
public struct NavigationAction {

  public var isActive: Binding<Bool> = .constant(false)
  
  public func popToRoot() {
    isActive.wrappedValue.toggle()
  }
  
  fileprivate enum EnvironmentKey: SwiftUI.EnvironmentKey {
    static let defaultValue = NavigationAction()
  }
}

public extension EnvironmentValues {

  var navigation: NavigationAction {
    get {
      self[NavigationAction.EnvironmentKey.self]
    } set {
      self[NavigationAction.EnvironmentKey.self] = newValue
    }
  }
}
```

## Demo 
<p align="center">
	<img src="/Documentation/Assets/NavigationAction.gif">
</p>