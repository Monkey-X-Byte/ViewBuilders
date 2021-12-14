# Dialog

## Several signatures for this function:
1. [`func dialog<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .bottom, interactionMode: DialogInteractionMode = .all, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View`](DialogBool.md)

2. [`func dialog<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .bottom, interactionMode: DialogInteractionMode = .all, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View`](DialogItem.md)

## Demo
<p align="center">
	<img src="/Documentation/Assets/DialogTop.gif" width="48%">
	<img src="/Documentation/Assets/DialogBottom.gif" width="48%">
</p>