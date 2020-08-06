event handling
mouseWheel: anEvent

	self centerOnEvent: anEvent around: [
		anEvent isWheelDown ifTrue: [ self zoomOut ].
		anEvent isWheelUp ifTrue: [ self zoomIn ] ]