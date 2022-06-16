pin handling
placePinAt: aLatLong labeled: aLabel

	| pin |
	
	pin := SMAGeocoderResult new.
	pin 
		latLong:  aLatLong;
		label: aLabel;
		zoom: self zoom.
	self pins add: pin.
	self
		layoutChanged;
		changed