private
drawPin: aPin on: aCanvas
	| pixelPos font labelSize labelPos |
	(worldBounds containsPoint: aPin value worldPos) ifFalse: [^ self].

	pixelPos := ((aPin value worldPos - worldBounds topLeft) / self pixelSize) + bounds topLeft.

	font := TextStyle defaultFont.
	labelSize :=  (font widthOfString: aPin value label) @ font height.
	labelPos := pixelPos + (0 @ -20) + (0 @ labelSize y negated).
	aCanvas fillRectangle: ((labelPos extent: labelSize) expandBy: 2) fillStyle: Color white.
	aCanvas drawString: aPin value label at: labelPos font: font color: Color black.

	aCanvas drawPolygon: {pixelPos. pixelPos + (-5 @ -20). pixelPos + (5 @ -20)}
		fillStyle: aPin value color.

"	aCanvas fillOval: (Rectangle center: pixelPos extent: 4@4) color: Color red."