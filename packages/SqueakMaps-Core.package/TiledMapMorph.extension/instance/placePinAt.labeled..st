*SqueakMaps-Core
placePinAt: aLatLong labeled: aLabel
	| pin |
	
	pin := MapLocationMarker new.
	pin 
		latLong:  aLatLong;
		label: aLabel;
		zoom: self zoom.
	self pins add: pin.
	self
		layoutChanged;
		changed.
	