# HUD

## Description 
Presents a HUD (heads-up display) when a binding to a Boolean value that you provide is true.

## Signature of the function 
`func hud<Content: View, Background: ShapeStyle>(isPresented: Binding<Bool>, background: Background, edge: VerticalEdge = .top, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View`

## Parameters of the function
- `isPresented`: A binding to a Boolean value that determines whether to present the HUD that you create in the modifier's `content` closure.
- `background`: A ShapeStyle that will fill the background of the HUD.
- `edge`: The vertical edge where the HUD will be displayed.
- `onDismiss`: The closure to execute when dismissing the HUD.
- `content`: A closure returning the content of the HUD.

## Demo
<p align="center">
<img src="/Documentation/Assets/HUDTop.gif" width="48%">  
<img src="/Documentation/Assets/HUDBottom.gif" width="48%">
</p>
