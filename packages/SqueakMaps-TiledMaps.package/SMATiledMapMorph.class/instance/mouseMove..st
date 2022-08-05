event handling
mouseMove: anEvent

	| delta |
	
	delta := anEvent cursorPoint - self lastMouse.
	self lastMouse: anEvent cursorPoint.
	delta isZero ifFalse: [
		self center: self center - (delta * self pixelSize);
			layoutChanged]