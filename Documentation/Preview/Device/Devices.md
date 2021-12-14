# Devices Preview

## Description
Preview on specific devices and orientation.

## Signature of the function
```swift
func previewDevices(_ devices: [Device], orientation: InterfaceOrientation = .portrait) -> some View
```

## Parameters of the function
- `devices`: The devices displayed in the preview.
- `orientation`: The orientation of the device.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewDevices([.iPhone13ProMax, .iPadAir], orientation: .landscapeLeft)
  }
}
```

## Demo
<p align="center">
  <img src="/Documentation/Assets/Devices.png" width="75%">
</p>