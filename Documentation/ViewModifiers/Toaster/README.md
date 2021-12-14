# Toaster

## Several signatures for this function:
1. [`func toaster<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View`](ToasterBoolContent.md)

2. [`func toaster<Title: View, Icon: View, Background:" ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping () -> Title, @ViewBuilder icon: @escaping () -> Icon) -> some View`](ToasterBoolTitleIcon.md)

3. [`func toaster<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View`](ToasterItemContent.md)

4. [`func toaster<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon) -> some View`](ToasterItemTitleIcon.md)

## Demo
<p align="center">
	<img src="/Documentation/Assets/ToasterTop.gif" width="48%">
	<img src="/Documentation/Assets/ToasterBottom.gif" width="48%">
</p>