accessing
mouseMove: anEvent

	self updateHoveredRoomAt: anEvent cursorPoint.
	anEvent redButtonPressed ifTrue: [super mouseMove: anEvent]