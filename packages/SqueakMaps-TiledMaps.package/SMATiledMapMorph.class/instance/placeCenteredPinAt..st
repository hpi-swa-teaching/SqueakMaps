pin handling
placeCenteredPinAt: aLongLat

	self 
		placePinAt: aLongLat;
		center: (SMAMapTileLoader longLatToWorldPos: aLongLat);
		zoom: self defaultZoom;
		layoutChanged;
		changed