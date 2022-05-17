pin handling
placeAutolabeledPinAt: aLongLat
	
	self placePinAt: aLongLat labeled: (self getNameTo: aLongLat With: self zoom)
	