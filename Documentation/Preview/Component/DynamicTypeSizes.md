# Component Preview with DynamicTypeSizes

## Description
Preview a component with multiple `DynamicTypeSize`.

## Signature of the function
```swift
func previewComponentWithDynamicTypeSizes(_ dynamicTypeSizes: [DynamicTypeSize] = DynamicTypeSize.allCases) -> some View
```

## Parameters of the function
- `dynamicTypeSizes`: The DynamicTypeSizes to apply to the component.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewComponentWithDynamicTypeSizes([.xSmall, .accessibility2])
  }
}
```

## Demo
<p align="center">
	<img src="/Documentation/Assets/ComponentWithDynamicTypeSizes.png" width="75%">
</p>