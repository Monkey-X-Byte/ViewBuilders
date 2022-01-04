# Toast

## Description
Presents a toast using the given item as a data source for the toast's content.

## Signature of the function
```swift
func toast<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon) -> some View
```

## Parameters of the function
- `item`: A binding to an optional source of truth for the toast. When `item` is non-`nil`, the system passes the item's content to the modifier's closure. You display this content in a toast that you create that the system displays to the user. If `item` changes, the system dismisses the toast and replaces it with a new one using the same process.
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