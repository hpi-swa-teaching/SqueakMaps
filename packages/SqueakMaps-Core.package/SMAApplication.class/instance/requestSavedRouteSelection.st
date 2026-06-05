pin management
requestSavedRouteSelection

	| index routes |
	
	routes := self class savedRoutes collect: [:route | 
		route routeTitle asString].
	index := UIManager default chooseFrom: routes title: 'Saved Routes'.
		
	^ index
