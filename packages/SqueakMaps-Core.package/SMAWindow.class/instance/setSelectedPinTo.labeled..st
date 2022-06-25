pin management
setSelectedPinTo: aLatLong labeled: aString

	self setSelectedPin: (SMAPin new
		latLong: aLatLong;
		label: aString;
		yourself).
	