pin management
setSelectedPinTo: aLatLong labelled: aString

	| pin |
	pin := SMAPin new
		latLong: aLatLong;
		label: aString;
		yourself.
	self selectedPin: pin.
	self tiledMapMorph removeAllPins.
	self tiledMapMorph placePinAt: (pin latLong) labeled: (pin label).