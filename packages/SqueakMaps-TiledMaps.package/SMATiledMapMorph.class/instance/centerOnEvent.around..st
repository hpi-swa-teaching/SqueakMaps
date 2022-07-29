event handling
centerOnEvent: anEvent around: aBlock

	| position delta oldPixelSize newPixelSize |
	
	oldPixelSize := self pixelSize.
	position := ((anEvent cursorPoint - self bounds topLeft) * oldPixelSize) + self worldBounds topLeft.
	delta := position - self center.
	aBlock value.
	newPixelSize := self pixelSize.
	delta := delta * (newPixelSize / oldPixelSize).
	self center: position - delta;
		layoutChanged