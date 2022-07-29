helping
worldPosToPixelPos: aWorldPos

	^ (aWorldPos - self worldBounds topLeft) / self pixelSize + self bounds topLeft