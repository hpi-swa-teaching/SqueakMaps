helping
getWorldPosFromCursorPoint: aPoint

	^ ((aPoint - self bounds topLeft) * self pixelSize) + self worldBounds topLeft
