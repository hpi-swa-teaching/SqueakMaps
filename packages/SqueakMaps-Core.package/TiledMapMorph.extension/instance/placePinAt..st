*SqueakMaps-Core
placePinAt: aLatLong
	| pin |
	
	pin := MapLocationMarker new.
	pin 
		latLong:  aLatLong;
		label: aLatLong asString.
	self pins add: pin.
	self 
		"center: (MapTileLoader latLongToWorldPos: aLatLong);
		zoom: self defaultZoom;"
		layoutChanged;
		changed.
	