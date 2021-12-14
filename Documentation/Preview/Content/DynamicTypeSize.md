# Content Preview with DynamicTypeSize

## Description
Preview with a specific `DynamicTypeSize` and orientation.

## Signature of the function
```swift
func previewWithDynamicTypeSize(_ dynamicTypeSize: DynamicTypeSize, orientation: InterfaceOrientation = .portrait) -> some View
```

## Parameters of the function
- `dynamicTypeSize`: The DynamicTypeSize to apply to the preview.
- `orientation`: The orientation of the device.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithDynamicTypeSize(.accessibility4)
  }
}
```

## Demo
<p align="center">
  <img src="/Documentation/Assets/ContentWithDynamicTypeSize.png" width="75%">
</p>