user interface
switchToModeBike
	
	self transportationModeInput: #bike.
	self hasSearched ifTrue: [self searchDirections].
	self changed: #buildSidebarTopChildren.