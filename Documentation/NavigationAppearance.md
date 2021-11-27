# NavigationAppearance

## Description
Customizes the style of the navigation bars.

## Signature of the function
`func navigationAppearance(titleColor: Color, backgroundColor: Color, hideSeparator: Bool = false) -> some View`

## Discussion
This modifier must be applied to the root of the NavigationView.
In order to keep consistency in the design of your application, this modifier does not allow you to change the tint of the elements contained in the navigation bars.

## Parameters of the function
- `foregroundColor`: The color to apply to the navigation titles.
- `backgroundColor`: The color that fills the background of the navigation bars.
- `hideSeparator`: A Boolean that indicates if the shadow is applied to the navigation bars or not.

## Demo
<p align="center">
<img src="/Documentation/Assets/NavigationAppearanceLarge.png" width="48%">  
<img src="/Documentation/Assets/NavigationAppearanceInline.png" width="48%">
</p>
