event handling
mouseDown: anEvent
	lastMouse := anEvent cursorPoint.
	anEvent hand waitForClicksOrDrag: self event: anEvent.