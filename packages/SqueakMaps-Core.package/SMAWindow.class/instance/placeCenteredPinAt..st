pin management
placeCenteredPinAt: aLongLat
	
	self tiledMapMorph 
		placeCenteredPinAt: aLongLat;
		center: (SMAMapTileLoader longLatToWorldPos: aLongLat)

	
