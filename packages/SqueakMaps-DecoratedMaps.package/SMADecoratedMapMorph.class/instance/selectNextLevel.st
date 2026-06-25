accessing
selectNextLevel

	| next |
	next := self nextVisibleLevel.
	next = self visibleLevel ifTrue: [^ self].

	self visibleLevel: next.
	self hoveredRoomOverlay: nil.
	self updateRoomLabelVisibility.
	self changed