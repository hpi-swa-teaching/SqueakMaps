accessing
mouseLeave: anEvent

	self hoveredRoomOverlay: nil.
	self updateRoomLabelVisibility.
	self changed