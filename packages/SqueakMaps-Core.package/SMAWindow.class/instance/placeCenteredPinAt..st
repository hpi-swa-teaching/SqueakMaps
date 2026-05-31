pin management
placeCenteredPinAt: aLatLong
	
	self tiledMapMorph 
		placeCenteredPinAt: aLatLong;
		center: (SMAMapTileLoader latLongToWorldPos: aLatLong)

	
