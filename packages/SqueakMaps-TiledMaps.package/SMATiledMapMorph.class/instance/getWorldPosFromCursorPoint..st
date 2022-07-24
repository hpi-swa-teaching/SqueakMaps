helping
getWorldPosFromCursorPoint: aPoint

	| position |

	position := ((aPoint - bounds topLeft) * self pixelSize) + worldBounds topLeft.

	^ (self clampCenterX: position x) @ (self clampCenterX: position y)