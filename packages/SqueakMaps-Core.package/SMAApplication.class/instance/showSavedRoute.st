search
showSavedRoute

	| index selectedRoute |
	self class savedRoutes isEmpty ifTrue: [ ^ self  inform: 'No routes saved.'].
	index := self requestSavedRouteSelection.
	"Pressed cancel"
	index = 0 ifTrue: [^ self].
	selectedRoute := self class savedRoutes at: index.
	self mapConfigurator displayRoutes: selectedRoute routeCollection.
	self hopLocations: (selectedRoute hops).
	self routes: selectedRoute routeCollection.
	
	self switchToSavedRouteDirectionsView.