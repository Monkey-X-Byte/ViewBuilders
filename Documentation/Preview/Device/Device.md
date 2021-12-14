# Device Preview

## Description
Preview on a specific device and orientation.

## Signature of the function
```swift
func previewDevice(_ device: Device, orientation: InterfaceOrientation = .portrait) -> some View
```

## Parameters of the function
- `device`: The device displayed in the preview.
- `orientation`: The orientation of the device.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewDevice(.iPhone13ProMax)
  }
}
```

## Demo
<p align="center">
  <img src="/Documentation/Assets/Device.png" width="75%">
</p>