route management
isRouteSelected: index put: aBoolean

	self resizeRouteSelectionList.
	
	self routeSelectionList at: index put: aBoolean.
	self visibleRoutes: self collectSelectedRoutes.
	self clear.
	self changed: #SavedRoutes.
	self mergeVisibleRoutes.