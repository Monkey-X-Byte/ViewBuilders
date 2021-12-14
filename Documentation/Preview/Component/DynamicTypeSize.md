# Component Preview with DynamicTypeSize

## Description
Preview a component with a specific `DynamicTypeSize`.

## Signature of the function
```swift
func previewComponentWithDynamicTypeSize(_ dynamicTypeSize: DynamicTypeSize) -> some View
```

## Parameters of the function
- `dynamicTypeSize`: The DynamicTypeSize to apply to the component.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewComponentWithDynamicTypeSize(.xLarge)
  }
}
```

## Demo
<p align="center">
	<img src="/Documentation/Assets/ComponentWithDynamicTypeSize.png" width="75%">
</p>