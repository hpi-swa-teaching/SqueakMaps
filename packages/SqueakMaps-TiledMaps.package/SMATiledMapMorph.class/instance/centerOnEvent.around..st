event handling
centerOnEvent: aPoint around: aBlock

	| p delta oldPixelSize newPixelSize |
	
	oldPixelSize := self pixelSize.
	p := ((aPoint - bounds topLeft) * oldPixelSize) + worldBounds topLeft.
	delta := p - center.
	aBlock value.
	newPixelSize := self pixelSize.
	delta := delta * (newPixelSize / oldPixelSize).
	center := p - delta.
	self layoutChanged