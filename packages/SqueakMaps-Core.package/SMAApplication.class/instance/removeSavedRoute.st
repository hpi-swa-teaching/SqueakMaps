category management
removeSavedRoute

	| selectedRoute |
	selectedRoute := (self routeSelectionList) first.
	
	Transcript show: self getSelectedSavedRoute; cr.
	
	self class removeSavedRoute: (self getSelectedSavedRoute first).