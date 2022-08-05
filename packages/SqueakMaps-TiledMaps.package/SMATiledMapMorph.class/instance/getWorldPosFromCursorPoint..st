helping
getWorldPosFromCursorPoint: aPoint

	| position |

	position := ((aPoint - self bounds topLeft) * self pixelSize) + self worldBounds topLeft.

	^ (self clampCoordinateOverflow: position x) @ (self clampCoordinateOverflow: position y)