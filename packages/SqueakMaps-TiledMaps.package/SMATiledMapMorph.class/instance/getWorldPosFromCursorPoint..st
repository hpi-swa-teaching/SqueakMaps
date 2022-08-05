helping
getWorldPosFromCursorPoint: aPoint

	| position |

	position := ((aPoint - bounds topLeft) * self pixelSize) + worldBounds topLeft.

	^ (self clampCoordinateOverflow: position x) @ (self clampCoordinateOverflow: position y)