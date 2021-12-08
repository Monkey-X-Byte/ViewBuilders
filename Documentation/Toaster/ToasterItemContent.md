# Toaster

## Description 
Presents a toaster using the given item as a data source for the toaster's content.

## Signature of the function 
`func toaster<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View`

## Parameters of the function
- `item`: A binding to an optional source of truth for the toaster. When `item` is non-`nil`, the system passes the item's content to the modifier's closure. You display this content in a toaster that you create that the system displays to the user. If `item` changes, the system dismisses the toaster and replaces it with a new using the same process.
- `background`: A ShapeStyle that will fill the background of the toaster.
- `edge`: The vertical edge where the toaster will be displayed.
- `onDismiss`: The closure to execute when dismissing the toaster.
- `content`: A closure returning the content of the toaster.

## Demo
<p align="center">
	<img src="/Documentation/Assets/ToasterTop.gif" width="48%">
	<img src="/Documentation/Assets/ToasterBottom.gif" width="48%">
</p>
