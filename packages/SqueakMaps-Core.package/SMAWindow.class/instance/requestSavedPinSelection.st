pin management
requestSavedPinSelection

	| index pins |
	
	pins := self class savedPins collect: [:pin | 
		(pin label, ' (', pin coordinates toStringLatLong , ')') asString].
	index := UIManager default chooseFrom: pins title: 'Saved Pins'.
		
	^ index
