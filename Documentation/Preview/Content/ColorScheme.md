# Content Preview with ColorScheme

## Description
Preview with a specific `ColorScheme` and orientation.

## Signature of the function
```swift
func previewWithColorScheme(_ colorScheme: ColorScheme, orientation: InterfaceOrientation = .portrait) -> some View
```

## Parameters of the function
- `colorScheme`: The ColorScheme to apply to the preview.
- `orientation`: The orientation of the device.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithColorScheme(.dark)
  }
}
```

## Demo
<p align="center">
  <img src="/Documentation/Assets/ContentWithColorScheme.png" width="75%">
</p>