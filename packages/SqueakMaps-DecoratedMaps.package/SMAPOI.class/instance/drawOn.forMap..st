accessing
drawOn: aCanvas forMap: aMapMorph

	| pixelPos worldPos iconSize markerSize markerColor |
	worldPos := SMAMapTileLoader latLongToWorldPos: self lon @ self lat.

	(aMapMorph worldBounds containsPoint: worldPos) ifFalse: [^ self].

	pixelPos := aMapMorph worldPosToPixelPos: worldPos.
	iconSize := 32.
	markerSize := 38.
	markerColor := Color r: 247 / 255 g: 187 / 255 b: 61 / 255.

	(self shouldDrawOn: aMapMorph) ifTrue: [
		aCanvas
			fillOval: (Rectangle center: pixelPos extent: markerSize @ markerSize)
			color: (Color white alpha: 0.85)
			borderWidth: 3
			borderColor: markerColor.
		aCanvas
			paintImage: (self image scaledToSize: iconSize)
			at: pixelPos - (iconSize / 2)]