# Toast

## Several signatures for this function:
1. [`func toast<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View`](ToastBoolContent.md)

2. [`func toast<Title: View, Icon: View, Background:" ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping () -> Title, @ViewBuilder icon: @escaping () -> Icon) -> some View`](ToastBoolTitleIcon.md)

3. [`func toast<Item: Identifiable, Content: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping (Item) -> Content) -> some View`](ToastItemContent.md)

4. [`func toast<Item: Identifiable, Title: View, Icon: View, Background: ShapeStyle>(item: Binding<Item?>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder title: @escaping (Item) -> Title, @ViewBuilder icon: @escaping (Item) -> Icon) -> some View`](ToastItemTitleIcon.md)

## Demo
<p align="center">
	<img src="/Documentation/Assets/ToastTop.gif" width="48%">
	<img src="/Documentation/Assets/ToastBottom.gif" width="48%">
</p>