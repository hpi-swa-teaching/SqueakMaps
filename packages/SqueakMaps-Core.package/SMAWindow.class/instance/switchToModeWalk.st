user interface
switchToModeWalk

	self transportationModeInput: #walk.
	self hasSearched ifTrue: [self searchDirections].
	self changed: #buildSidebarTopChildren.