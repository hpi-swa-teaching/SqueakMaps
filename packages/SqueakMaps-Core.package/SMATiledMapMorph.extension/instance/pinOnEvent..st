*SqueakMaps-Core
pinOnEvent: anEvent
	| position pixelSize |

	pixelSize := self pixelSize.
	position := ((anEvent cursorPoint - bounds topLeft) * pixelSize) + worldBounds topLeft.
	self placeAutolabeledPinAt: (MapTileLoader worldPosToLatLong: position)