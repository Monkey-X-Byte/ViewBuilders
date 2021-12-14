# Component Preview

## Two categories of previews that can be used separately or together
1. **ColorScheme**:
	- [`func previewComponentWithColorScheme(_ colorScheme: ColorScheme) -> some View`](ColorScheme.md)
	- [`func previewComponentWithColorSchemes() -> some View`](ColorSchemes.md)

2. **DynamicTypeSize**:
	- [`func previewComponentWithDynamicTypeSize(_ dynamicTypeSize: DynamicTypeSize) -> some View`](DynamicTypeSize.md)
	- [`func previewComponentWithDynamicTypeSizes(_ dynamicTypeSizes: [DynamicTypeSize] = DynamicTypeSize.allCases) -> some View`](DynamicTypeSizes.md)

## Comments
You can combine these modifiers by using a modifier for each of these categories.

For example, if you want to preview a component with all `ColorScheme` and `DynamicTypeSize` set to `xSmall` and `xxxLarge`, your code will look like this:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewComponentWithColorSchemes()
      .previewComponentWithDynamicTypeSizes([.xSmall, .xxxLarge])
  }
}
```

Thanks to this, you will get a preview as follows:
<p align="center">
	<img src="/Documentation/Assets/ComponentColorSchemesDynamicTypes.png" width="75%">
</p>

Note that you can reverse the order of the modifiers:
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewComponentWithDynamicTypeSizes([.xSmall, .xxxLarge])
      .previewComponentWithColorSchemes()
  }
}
```

As a result the preview will show the same elements but in a different order:
<p align="center">
	<img src="/Documentation/Assets/ComponentDynamicTypesColorSchemes.png" width="75%">
</p>