category management
removeSavedRoute

	| selectedRoute |
	selectedRoute := (self routeSelectionList) first.	
	self class removeSavedRoute: (self getSelectedSavedRoute first).