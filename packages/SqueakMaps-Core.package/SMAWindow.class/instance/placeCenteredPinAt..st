pin management
placeCenteredPinAt: aLatLong
	
	self tiledMapMorph 
		placeCenteredPinAt: aLatLong;
		center: (MapTileLoader latLongToWorldPos: aLatLong).

	
