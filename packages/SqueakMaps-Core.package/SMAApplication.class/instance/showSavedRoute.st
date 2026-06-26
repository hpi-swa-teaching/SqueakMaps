search
showSavedRoute

	| selectedRoute |
	self class savedRoutes isEmpty ifTrue: [ ^ self  inform: 'No routes saved.'].
	selectedRoute := SavedRoutes detect: [:elem | elem routeTitle = self getSelectedSavedRoute first].
	
	
	self mapConfigurator displayRoutes: selectedRoute routeCollection.
	self hopLocations: (selectedRoute hops).
	self routes: selectedRoute routeCollection.
	
	self switchToSavedRouteDirectionsView.