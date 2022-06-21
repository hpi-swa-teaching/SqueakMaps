markers
placeMarkerAt: aLatLong labeled: aLabel
	
	self markers add: (SMAMarker new
		latLong:  aLatLong;
		label: aLabel;
		color: Color red;
		yourself).
	self
		layoutChanged;
		changed