private
drawPin: aPin on: aCanvas
	| pixelPos font labelSize labelPos |
	(worldBounds containsPoint: aPin worldPos) ifFalse: [^ self].

	pixelPos := ((aPin worldPos - worldBounds topLeft) / self pixelSize) + bounds topLeft.

	font := TextStyle defaultFont.
	labelSize :=  (font widthOfString: aPin label) @ font height.
	labelPos := pixelPos + (0 @ -20) + (0 @ labelSize y negated).
	aCanvas fillRectangle: ((labelPos extent: labelSize) expandBy: 2) fillStyle: Color white.
	aCanvas drawString: aPin label at: labelPos font: font color: Color black.

	aCanvas drawPolygon: {pixelPos. pixelPos + (-5 @ -20). pixelPos + (5 @ -20)}
		fillStyle: aPin color.

"	aCanvas fillOval: (Rectangle center: pixelPos extent: 4@4) color: Color red."