displaying
displayLocation: aSMALocation
	
	self setMarkerFrom: aSMALocation.
	self clearRoute.
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed