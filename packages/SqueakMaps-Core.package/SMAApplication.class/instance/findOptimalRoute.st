building
findOptimalRoute

	self hopLocations: (self navigator findOptimalRoute: self hopLocations).
	self changed: #hopLocations.
	self searchDirections.