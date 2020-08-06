*SqueakMaps-Core
placeCenteredPinAt: aLatLong
	self 
		placePinAt: aLatLong;
		center: (SMAMapTileLoader latLongToWorldPos: aLatLong);
		zoom: self defaultZoom;
		layoutChanged;
		changed.
	