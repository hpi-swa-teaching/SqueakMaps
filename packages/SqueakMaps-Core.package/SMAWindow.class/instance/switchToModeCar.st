user interface
switchToModeCar

	self transportationModeInput: #car.
	self hasSearched ifTrue: [self searchMultipleLocations].
	self changed: #buildSidebarTopChildren.