search
searchDirections

	self prepareDirectionSearch.
	
	(self hopLocations size < 2) ifTrue: [
		^ self inform: 'Please enter at least two hops.'].
	
	self searchRoutesBetweenHops.
	self displayRoutesIfComplete.