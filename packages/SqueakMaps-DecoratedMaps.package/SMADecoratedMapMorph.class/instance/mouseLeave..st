accessing
mouseLeave: anEvent

	self hoveredRoomOverlay: nil.
	self hoveredBuildingOverlay: nil.
	self updateRoomLabelVisibility.
	self updateBuildingLabelVisibility.
	self changed