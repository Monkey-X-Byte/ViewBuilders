# HUD

## Several signatures for this function : 
1. [`func hud<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View`](HUDBool.md)

2. [`func hud<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View`](HUDItem.md)

## Demo
<p align="center">
	<img src="/Documentation/Assets/HUDTop.gif" width="48%">
	<img src="/Documentation/Assets/HUDBottom.gif" width="48%">
</p>