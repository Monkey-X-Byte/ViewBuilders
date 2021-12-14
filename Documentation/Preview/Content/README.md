# Content Preview

## Two categories of previews that can be used separately or together
1. **ColorScheme**:
	- [`func previewWithColorScheme(_ colorScheme: ColorScheme, orientation: InterfaceOrientation = .portrait) -> some View`](ColorScheme.md)
	- [`func previewWithColorSchemes(orientation: InterfaceOrientation = .portrait) -> some View`](ColorSchemes.md)

2. **DynamicTypeSize**:
	- [`func previewWithDynamicTypeSize(_ dynamicTypeSize: DynamicTypeSize, orientation: InterfaceOrientation = .portrait) -> some View`](DynamicTypeSize.md)
	- [`func previewWithDynamicTypeSizes(_ dynamicTypeSizes: [DynamicTypeSize] = DynamicTypeSize.allCases, orientation: InterfaceOrientation = .portrait) -> some View`](DynamicTypeSizes.md)

## Comments
You can combine these modifiers by using a modifier for each of these categories.

For example, if you want to preview a content with all `ColorScheme` and `DynamicTypeSize` set to `xSmall` and `xxxLarge`, your code will look like this:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithColorSchemes()
      .previewWithDynamicTypeSizes([.xSmall, .xxxLarge])
  }
}
```

Thanks to this, you will get a preview as follows:
<p align="center">
	<img src="/Documentation/Assets/ContentColorSchemesDynamicTypesFirst.png" width="48%">
	<img src="/Documentation/Assets/ContentColorSchemesDynamicTypesSecond.png" width="48%">
</p>

Note that you can reverse the order of the modifiers:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithDynamicTypeSizes([.xSmall, .xxxLarge])
      .previewWithColorSchemes()
  }
}
```

As a result the preview will show the same elements but in a different order:
<p align="center">
	<img src="/Documentation/Assets/ContentDynamicTypesColorSchemesFirst.png" width="48%">
	<img src="/Documentation/Assets/ContentDynamicTypesColorSchemesSecond.png" width="48%">
</p>

Finally, if you want to change the orientation of the device, this override must be in the first modifier otherwise it will not work:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithDynamicTypeSizes([.xSmall, .xxxLarge])
      .previewWithColorSchemes(orientation: .landscapeLeft) // ❌ This override must be in the first modifier
  }
}
```
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewWithDynamicTypeSizes([.xSmall, .xxxLarge], orientation: .landscapeLeft) // ✅
      .previewWithColorSchemes()
  }
}
```
<p align="center">
	<img src="/Documentation/Assets/ContentDynamicTypesColorSchemesWithOrientation.png" width="75%">
</p>