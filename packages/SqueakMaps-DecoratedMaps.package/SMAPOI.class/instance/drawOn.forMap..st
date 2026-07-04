accessing
drawOn: aCanvas forMap: aMapMorph

	| pixelPos worldPos iconSize markerSize markerColor |
	worldPos := SMAMapTileLoader latLongToWorldPos: self lon @ self lat.

	(aMapMorph worldBounds containsPoint: worldPos) ifFalse: [^ self].

	pixelPos := aMapMorph worldPosToPixelPos: worldPos.
	iconSize := self class markerIconSize.
	markerSize := self class markerSize.
	markerColor := self class markerBorderColor.

	(self shouldDrawOn: aMapMorph) ifTrue: [
		aCanvas
			fillOval: (Rectangle center: pixelPos extent: markerSize @ markerSize)
			color: self class markerFillColor
			borderWidth: self class markerBorderWidth
			borderColor: markerColor.
		aCanvas
			drawImage: (self image scaledToSize: iconSize)
			at: pixelPos - (iconSize / 2)]