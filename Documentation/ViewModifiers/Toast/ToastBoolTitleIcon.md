# Toast

## Description
Presents a toast when a binding to a Boolean value that you provide is true.

## Signature of the function
```swift
func toast<Title: View, Icon: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping () -> Title, @ViewBuilder icon: @escaping () -> Icon) -> some View
```

## Parameters of the function
- `isPresented`: A binding to a Boolean value that determines whether to present the toast that you create in the modifier's `content` closure.
- `background`: A ShapeStyle that will fill the background of the toast.
- `edge`: The vertical edge where the toast will be displayed.
- `onDismiss`: The closure to execute when dismissing the toast.
- `title`: A closure returning the title of the toast.
- `icon`: A closure returning the icon of the toast.

## Demo
<p align="center">
	<img src="/Documentation/Assets/ToastTop.gif" width="48%">
	<img src="/Documentation/Assets/ToastBottom.gif" width="48%">
</p>