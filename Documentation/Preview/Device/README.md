# Device Preview

## Two functions available
1. [`func previewDevice(_ device: Device, orientation: InterfaceOrientation = .portrait) -> some View`](Device.md)

2. [`func previewDevices(_ devices: [Device], orientation: InterfaceOrientation = .portrait) -> some View`](Devices.md)

## Comments
You can combine one of these modifiers with a modifier from each [Content Preview](../Content/README.md) category.

For example, if you want to preview on an *iPhone 13 Pro Max* and on an *iPad Air* with all `ColorScheme`, your code will look like this:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewDevices([.iPhone13ProMax, .iPadAir])
      .previewWithColorSchemes()
  }
}
```

Thanks to this, you will get a preview as follows:
<p align="center">
	<img src="/Documentation/Assets/DeviceColorSchemesFirst.png" width="48%">
	<img src="/Documentation/Assets/DeviceColorSchemesSecond.png" width="48%">
</p>

Alternatively, you can also preview on these same devices with the `DynamicTypeSize` set to `xSmall` and `xxxLarge`:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewDevices([.iPhone13ProMax, .iPadAir])
      .previewWithDynamicTypeSizes([.xSmall, .xxxLarge])
  }
}
```

You will get the following result:
<p align="center">
	<img src="/Documentation/Assets/DeviceDynamicTypeSizesFirst.png" width="48%">
	<img src="/Documentation/Assets/DeviceDynamicTypeSizesSecond.png" width="48%">
</p>

As mentioned in [Content Preview](../Content/README.md), the override of the orientation must be in the first modifier otherwise it will not work:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewDevices([.iPhone13ProMax, .iPadAir])
      .previewWithColorSchemes(orientation: .landscapeLeft) // // ❌ This override must be in the first modifier
  }
}
```
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewDevices([.iPhone13ProMax, .iPadAir], orientation: .landscapeLeft) // ✅
      .previewWithColorSchemes()
  }
}
```
<p align="center">
	<img src="/Documentation/Assets/DeviceColorSchemesWithOrientationFirst.png" width="48%">
	<img src="/Documentation/Assets/DeviceColorSchemesWithOrientationSecond.png" width="48%">
</p>