*SqueakMaps-Core
centerOnEvent: anEvent
	| p delta pixelSize |

	pixelSize := self pixelSize.
	p := ((anEvent cursorPoint - bounds topLeft) * pixelSize) + worldBounds topLeft.
	"delta := p - center."
	center := p.
	self layoutChanged.
	self changed.