# Component Preview with ColorScheme

## Description
Preview a component with a specific `ColorScheme`.

## Signature of the function
```swift
func previewComponentWithColorScheme(_ colorScheme: ColorScheme) -> some View
```

## Parameters of the function
- `colorScheme`: The ColorScheme to apply to the component.

## Code
```swift
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
      .previewComponentWithColorScheme(.dark)
  }
}
```

## Demo
<p align="center">
	<img src="/Documentation/Assets/ComponentWithColorScheme.png" width="75%">
</p>