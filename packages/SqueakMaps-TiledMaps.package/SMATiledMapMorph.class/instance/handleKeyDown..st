event handling
handleKeyDown: anEvent

	| char zoomPoint |
	
	char := anEvent keyCharacter.
	(char = $+ or: [char =$-]) ifFalse: [^false].
	
	zoomPoint := Sensor cursorPoint.
	
	(self bounds containsPoint: zoomPoint) ifFalse: [
		zoomPoint := self bounds center ].
	
	self centerOnEvent: zoomPoint around: [
		(char = $+) ifTrue: [self zoomIn].
		(char = $-) ifTrue: [self zoomOut] ]