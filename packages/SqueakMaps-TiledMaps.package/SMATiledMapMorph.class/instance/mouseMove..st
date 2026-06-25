event handling
mouseMove: anEvent

	| delta newCenter newX newY lastPos |

	lastPos := lastMouse ifNil: 0@0.
	delta := anEvent cursorPoint - lastMouse.
	lastMouse := anEvent cursorPoint.

	newCenter := self center - (delta * self pixelSize).
	newX := self clampCoordinateOverflow: newCenter x.
	newY := self clampWorldPosHeight: newCenter y.

	self center: newX @ newY