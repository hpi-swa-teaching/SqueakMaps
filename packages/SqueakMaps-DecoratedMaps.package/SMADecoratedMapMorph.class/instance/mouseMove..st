accessing
mouseMove: anEvent

	self updateHoveredRoomAt: anEvent cursorPoint.
	self updateHoveredBuildingAt: anEvent cursorPoint.
	anEvent redButtonPressed ifTrue: [super mouseMove: anEvent]