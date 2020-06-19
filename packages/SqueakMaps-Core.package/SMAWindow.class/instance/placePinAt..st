pinning
placePinAt: aLatLong
	| pin |
	
	pin := MapLocationMarker new.
	pin 
		latLong:  aLatLong;
		label: aLatLong asString;
		color: Color green.
	self tiledMapMorph pins add: pin.
	self tiledMapMorph	
		center: (MapTileLoader latLongToWorldPos: aLatLong);
		zoom: self defaultZoom;
		layoutChanged;
		changed.
	
