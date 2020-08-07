pin handling
placeAutolabeledPinAt: aLatLong
	
	self placePinAt: aLatLong labeled: (self getNameTo: aLatLong With: self zoom)
	