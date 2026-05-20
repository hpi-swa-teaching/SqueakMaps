event handling
mouseWheel: anEvent

	self centerOnEvent: anEvent cursorPoint around: [
		anEvent isWheelDown ifTrue: [ self zoomOut ].
		anEvent isWheelUp ifTrue: [ self zoomIn ] ]