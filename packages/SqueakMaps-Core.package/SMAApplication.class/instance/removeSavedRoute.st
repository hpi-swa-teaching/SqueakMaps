category management
removeSavedRoute

	| selectedRoute |
	selectedRoute := SavedRoutes detect: [:elem | elem routeTitle = self getSelectedSavedRoute first].
	self class removeSavedRoute: selectedRoute.
	self changed: #savedRoutes.
	