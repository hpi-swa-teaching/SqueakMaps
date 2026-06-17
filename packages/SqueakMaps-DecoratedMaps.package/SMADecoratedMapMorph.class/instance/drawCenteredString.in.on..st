accessing
drawCenteredString: aString in: aRectangle on: aCanvas

	| font textExtent position |
	font := TextStyle defaultFont.
	textExtent := (font widthOfString: aString) @ font height.
	position := aRectangle center - (textExtent / 2).

	aCanvas
		drawString: aString
		at: position
		font: font
		color: Color black