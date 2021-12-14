# Binding

## Description
A function that allows you to create dynamics Binding for the preview.

## Signature of the function
```swift
static func mock(_ value: Value) -> Self
```

## Parameters of the function
- `value`: The mocked value which is dynamic.

## Code
```swift 
struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView(isActive: .mock(false))
  }
}
```

## Demo
<p align="center">
	<img src="/Documentation/Assets/BindingPreview.gif" height="10%">
</p>