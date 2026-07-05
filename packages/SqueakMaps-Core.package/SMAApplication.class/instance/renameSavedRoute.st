route management
renameSavedRoute

	| savedRoutes selectedRoute |
	savedRoutes := self class savedRoutes.
	savedRoutes isEmpty ifTrue: [^ self inform: 'No saved route to rename.'].
		
	selectedRoute := SavedRoutes detect: [:elem | elem routeTitle = self getSelectedSavedRoute first].
	self class renameSavedRoute: selectedRoute.
	self changed: #savedRoutes.