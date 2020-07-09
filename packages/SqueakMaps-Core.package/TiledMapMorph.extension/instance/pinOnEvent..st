*SqueakMaps-Core
pinOnEvent: anEvent
	| p pixelSize |

	pixelSize := self pixelSize.
	p := ((anEvent cursorPoint - bounds topLeft) * pixelSize) + worldBounds topLeft.
	self placePinAt: (MapTileLoader worldPosToLatLong: p)