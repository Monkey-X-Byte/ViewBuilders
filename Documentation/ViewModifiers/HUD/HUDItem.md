# HUD

## Description
Presents a HUD (heads-up display) using the given item as a data source for the HUD's content.

## Signature of the function
```swift
func hud<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View
```

## Parameters of the function
- `item`: A binding to an optional source of truth for the HUD. When `item` is non-`nil`, the system passes the item's content to the modifier's closure. You display this content in a HUD that you create that the system displays to the user. If `item` changes, the system dismisses the HUD and replaces it with a new one using the same process.
- `background`: A ShapeStyle that will fill the background of the HUD.
- `edge`: The vertical edge where the HUD will be displayed.
- `onDismiss`: The closure to execute when dismissing the HUD.
- `content`: A closure returning the content of the HUD.

## Demo
<p align="center">
	<img src="/Documentation/Assets/HUDTop.gif" width="48%">
	<img src="/Documentation/Assets/HUDBottom.gif" width="48%">
</p>