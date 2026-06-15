accessing
resetIndoorLevelSelection

	self visibleLevel: 0.
	self hoveredRoomOverlay: nil.
	self hoveredBuildingOverlay: nil.
	self updateRoomLabelVisibility.
	self updateBuildingLabelVisibility.
	self changed