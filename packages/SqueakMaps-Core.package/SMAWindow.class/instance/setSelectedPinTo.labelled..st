pin management
setSelectedPinTo: aLatLong labelled: aString

	self setSelectedPin: (SMAPin new
		latLong: aLatLong;
		label: aString;
		yourself).
	