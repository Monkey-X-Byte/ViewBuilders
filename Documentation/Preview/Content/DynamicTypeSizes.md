# Content Preview with DynamicTypeSizes

## Description
Preview with multiple `DynamicTypeSize` and a specific orientation.

## Signature of the function
```swift
func previewWithDynamicTypeSizes(_ dynamicTypeSizes: [DynamicTypeSize] = DynamicTypeSize.allCases, orientation: InterfaceOrientation = .portrait) -> some View
```

## Parameters of the function
- `dynamicTypeSizes`: The DynamicTypeSizes to apply to the preview.
- `orientation`: The orientation of the device.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithDynamicTypeSizes([.small, .xLarge], orientation: .landscapeRight)
  }
}
```

## Demo
<p align="center">
  <img src="/Documentation/Assets/ContentWithDynamicTypeSizes.png" width="75%">
</p>