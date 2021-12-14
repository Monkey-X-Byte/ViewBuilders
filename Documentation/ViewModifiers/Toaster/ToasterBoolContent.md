# Toaster

## Description
Presents a toaster when a binding to a Boolean value that you provide is true.

## Signature of the function
```swift
func toaster<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View
```

## Parameters of the function
- `isPresented`: A binding to a Boolean value that determines whether to present the toaster that you create in the modifier's `content` closure.
- `background`: A ShapeStyle that will fill the background of the toaster.
- `edge`: The vertical edge where the toaster will be displayed.
- `onDismiss`: The closure to execute when dismissing the toaster.
- `content`: A closure returning the content of the toaster.

## Demo
<p align="center">
	<img src="/Documentation/Assets/ToasterTop.gif" width="48%">
	<img src="/Documentation/Assets/ToasterBottom.gif" width="48%">
</p>