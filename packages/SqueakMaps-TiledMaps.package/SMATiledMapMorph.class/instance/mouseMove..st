event handling
mouseMove: anEvent

	| delta newCenter newX newY |

	delta := anEvent cursorPoint - lastMouse.
	lastMouse := anEvent cursorPoint.

	newCenter := self center - (delta * self pixelSize).
	newX := self clampCoordinateOverflow: newCenter x.
	newY := self clampWorldPosHeight: newCenter y.

	self center: newX @ newY