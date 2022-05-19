drawing
worldPosToPixelPos: aWorldPos

	^ (aWorldPos - worldBounds topLeft) / self pixelSize + bounds topLeft