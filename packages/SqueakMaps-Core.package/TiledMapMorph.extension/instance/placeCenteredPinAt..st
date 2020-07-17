*SqueakMaps-Core
placeCenteredPinAt: aLatLong
	self 
		placePinAt: aLatLong;
		center: (MapTileLoader latLongToWorldPos: aLatLong);
		zoom: self defaultZoom;
		layoutChanged;
		changed.
	