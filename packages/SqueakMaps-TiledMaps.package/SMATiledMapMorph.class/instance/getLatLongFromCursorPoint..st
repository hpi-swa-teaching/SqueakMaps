helping
getLatLongFromCursorPoint: aPoint

	| position |

	position := ((aPoint - bounds topLeft) * self pixelSize) + worldBounds topLeft.
	^ SMAMapTileLoader worldPosToLatLong: position
