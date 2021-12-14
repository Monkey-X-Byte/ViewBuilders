# Content Preview with ColorSchemes

## Description
Preview with all `ColorScheme` and a specific orientation.

## Signature of the function
```swift
func previewWithColorSchemes(orientation: InterfaceOrientation = .portrait) -> some View
```

## Parameters of the function
- `orientation`: The orientation of the device.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithColorSchemes(orientation: .landscapeLeft)
  }
}
```

## Demo
<p align="center">
  <img src="/Documentation/Assets/ContentWithColorSchemes.png" width="75%">
</p>