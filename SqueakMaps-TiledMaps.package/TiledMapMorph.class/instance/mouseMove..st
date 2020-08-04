event handling
mouseMove: anEvent
	| delta |
	delta := anEvent cursorPoint - lastMouse.
	lastMouse := anEvent cursorPoint.
	delta isZero ifFalse: [self center: center - (delta * self pixelSize)].