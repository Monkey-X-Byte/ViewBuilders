# Dialog

## Description 
Presents a custom dialog when a binding to a Boolean value that you provide is true.

## Discussion
If you want to add a button that dismisses the dialog, please add `withAnimation` to make sure that the animation is played.
When adding such a button, you may want to set `interactionMode` to `none`.

## Signature of the function 
`func dialog<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .bottom, interactionMode: DialogInteractionMode = .all, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View`

## Parameters of the function
- `isPresented`: A binding to a Boolean value that determines whether to present the dialog that you create in the modifier's `content` closure.
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
