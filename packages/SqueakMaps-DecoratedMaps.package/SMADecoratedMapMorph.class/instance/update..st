updating
update: anAspect

	anAspect = #visibleLevel ifTrue: [
		self hoveredRoomOverlay: nil.
		self hoveredBuildingOverlay: nil.
		self updateRoomLabelVisibility.
		self updateBuildingLabelVisibility.
		self changed.
		^ self].
	anAspect = #availableLevels ifTrue: [
		self changed.
		^ self].
	super update: anAspect
