private
drawMarker: aMarker on: aCanvas

	| pixelPos font labelSize labelPos translucentWhite |
	
	(worldBounds containsPoint: aMarker worldPos) ifFalse: [^ self].

	pixelPos := self worldPosToPixelPos: aMarker worldPos.

	font := TextStyle defaultFont.
	labelSize :=  (font widthOfString: aMarker label) @ font height.
	labelPos := pixelPos + (0 @ -20) + (0 @ labelSize y negated).
	translucentWhite := Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8.
	aCanvas fillRectangle: ((labelPos extent: labelSize) expandBy: 2) fillStyle: translucentWhite.
	aCanvas drawString: aMarker label at: labelPos font: font color: Color black.

	aCanvas 
		drawPolygon: { pixelPos. pixelPos + (-5 @ -20). pixelPos + (5 @ -20) }
		fillStyle: aMarker color