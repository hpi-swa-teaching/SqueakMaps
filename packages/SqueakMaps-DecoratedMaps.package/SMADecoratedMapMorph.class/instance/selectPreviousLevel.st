accessing
selectPreviousLevel

	| previous |
	previous := self previousVisibleLevel.
	previous = self visibleLevel ifTrue: [^ self].

	self visibleLevel: previous.
	self hoveredRoomOverlay: nil.
	self updateRoomLabelVisibility.
	self changed