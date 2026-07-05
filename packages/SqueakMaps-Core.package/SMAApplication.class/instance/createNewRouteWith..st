route management
createNewRouteWith: aTitle
	
	| savedRoute |
	savedRoute := SMASavedRoute new.
	savedRoute routeCollection: self routes.
	savedRoute routeTitle: aTitle.
	savedRoute hops: self hopLocations shallowCopy.
	self class addSavedRoute: savedRoute 