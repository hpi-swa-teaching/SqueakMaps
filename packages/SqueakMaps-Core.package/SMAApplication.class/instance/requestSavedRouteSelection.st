pin management
requestSavedRouteSelection

	| index savedRoutes |
	
	savedRoutes := self class savedRoutes collect: [:route | 
		route routeTitle asString].
	index := UIManager default chooseFrom: savedRoutes title: 'Saved Routes'.
		
	^ index
