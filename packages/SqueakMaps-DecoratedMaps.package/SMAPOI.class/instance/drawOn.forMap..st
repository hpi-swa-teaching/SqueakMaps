accessing
drawOn: aCanvas forMap: aMapMorph

	| pixelPos worldPos |
	worldPos := SMAMapTileLoader latLongToWorldPos: self lon @ self lat.
	
	(aMapMorph worldBounds containsPoint: worldPos) ifFalse: [^ self].
	"todo: increase bounds by width of poi to draw partially?"
	
	pixelPos := aMapMorph worldPosToPixelPos: worldPos.
	
	(self shouldDrawOn: aMapMorph) ifTrue: [
		aCanvas
			drawImage: (self image scaledToSize: 32)
			at: pixelPos - (32 / 2)]