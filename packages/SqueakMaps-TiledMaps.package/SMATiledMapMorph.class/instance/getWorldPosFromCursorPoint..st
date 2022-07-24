helping
getWorldPosFromCursorPoint: aPoint

	^ ((aPoint - bounds topLeft) * self pixelSize) + worldBounds topLeft
