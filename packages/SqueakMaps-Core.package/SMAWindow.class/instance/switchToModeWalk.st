user interface
switchToModeWalk

	self transportationModeInput: #walk.
	self hasSearched
		ifTrue: [self searchMultipleLocations]