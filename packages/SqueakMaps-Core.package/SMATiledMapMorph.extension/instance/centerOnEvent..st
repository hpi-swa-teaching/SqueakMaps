*SqueakMaps-Core
centerOnEvent: anEvent

	| p pixelSize |

	pixelSize := self pixelSize.
	p := ((anEvent cursorPoint - bounds topLeft) * pixelSize) + worldBounds topLeft.
	center := p.
	self layoutChanged.
	self changed