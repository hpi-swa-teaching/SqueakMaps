user interface
switchToModeCar

	self transportationModeInput: #car.
	self hasSearched ifTrue: [self searchDirections].
	self changed: #buildSidebarTopChildren.