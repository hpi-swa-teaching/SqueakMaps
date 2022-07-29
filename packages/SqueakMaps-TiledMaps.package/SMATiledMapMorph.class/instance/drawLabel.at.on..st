private
drawLabel: aString at: aPoint on: aCanvas

	| upperCorner font labelSize translucentWhite |
	
	font := TextStyle defaultFont.
	labelSize :=  (font widthOfString: aString) @ font height.
	translucentWhite := Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8.
	upperCorner := aPoint + (0 @ labelSize y negated).
	aCanvas fillRectangle: ((upperCorner extent: labelSize) expandBy: 2) fillStyle: translucentWhite.
	aCanvas drawString: aString at: upperCorner font: font color: Color black.