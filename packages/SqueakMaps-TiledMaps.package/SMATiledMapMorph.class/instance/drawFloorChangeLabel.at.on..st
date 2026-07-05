private
drawFloorChangeLabel: aString at: aWorldPoint on: aCanvas

	| pixelPosition font labelSize labelPosition backgroundBounds |
	pixelPosition := self worldPosToPixelPos: aWorldPoint.
	font := TextStyle defaultFont.
	labelSize := (font widthOfString: aString) @ font height.
	labelPosition := pixelPosition + (6 @ -6) - (0 @ labelSize y).
	backgroundBounds := (labelPosition extent: labelSize) expandBy: 3.

	aCanvas
		fillRectangle: backgroundBounds
		fillStyle: (Color white alpha: 0.9).
	aCanvas
		frameRectangle: backgroundBounds
		color: Color darkGray.
	aCanvas
		drawString: aString
		at: labelPosition
		font: font
		color: Color black