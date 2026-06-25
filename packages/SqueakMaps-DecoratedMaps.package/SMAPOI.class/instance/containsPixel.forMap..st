testing
containsPixel: aPoint forMap: aMapMorph

	| pixelPos worldPos bounds |

	(self shouldDrawOn: aMapMorph) ifFalse: [^ false].
	worldPos := SMAMapTileLoader latLongToWorldPos: self lon @ self lat.
	(aMapMorph worldBounds containsPoint: worldPos) ifFalse: [^ false].
	pixelPos := aMapMorph worldPosToPixelPos: worldPos.
	bounds := (pixelPos - 16) corner: (pixelPos + 16).
	^ bounds containsPoint: aPoint