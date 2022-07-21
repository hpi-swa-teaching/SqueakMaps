helping
getLatLongFromCursorPoint: aPoint

	| position |

	position := ((aPoint - bounds topLeft) * self pixelSize) + worldBounds topLeft.

	^ SMAMapConfigurator worldPosToLatLong: (self clampCenterX: position x) @ (self clampCenterX: position y)