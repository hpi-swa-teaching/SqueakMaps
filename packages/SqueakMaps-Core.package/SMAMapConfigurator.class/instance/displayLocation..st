displaying
displayLocation: aSMALocation
	
	self addMarkerFrom: aSMALocation.
	
	self tiledMapMorph layoutChanged.
	self tiledMapMorph changed