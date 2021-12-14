# Dialog

## Description
Presents a custom dialog using the given item as a data source for the dialog's content.

## Discussion
If you want to add a button that dismisses the dialog, please add `withAnimation` to make sure that the animation is played.
When adding such a button, you may want to set `interactionMode` to `none`.

## Signature of the function
```swift
func dialog<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .bottom, interactionMode: DialogInteractionMode = .all, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View
```

## Parameters of the function
- `item`: A binding to an optional source of truth for the dialog. When `item` is non-`nil`, the system passes the item's content to the modifier's closure. You display this content in a dialog that you create that the system displays to the user. If `item` changes, the system dismisses the dialog and replaces it with a new one
using the same process.
- `background`: A ShapeStyle that will fill the background of the dialog.
- `edge`: The vertical edge where the dialog will come from.
- `interactionMode`: The type of interaction the user can do to make the dialog disappear.
- `onDismiss`: The closure to execute when dismissing the dialog.
- `content`: A closure returning the content of the dialog.

## Demo
<p align="center">
	<img src="/Documentation/Assets/DialogTop.gif" width="48%">
	<img src="/Documentation/Assets/DialogBottom.gif" width="48%">
</p>