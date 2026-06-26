pin management
routeSelectedPins
	
	self switchToDirectionsView.
	self hopLocations: (self collectSelectedVisiblePins).
	self changed: #hopLocationLabels.
	self changed: #hopLocations
