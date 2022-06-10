pin management
setSelectedPinTo: aLatLong

	| pin |
	pin := SMAPin new
		latLong: aLatLong;
		label: (self geocoder reverse: aLatLong withZoom: self tiledMapMorph zoom);
		yourself.
	self selectedPin: pin.
	self tiledMapMorph removeAllPins.
	self tiledMapMorph placePinAt: (pin latLong) labeled: (pin label).