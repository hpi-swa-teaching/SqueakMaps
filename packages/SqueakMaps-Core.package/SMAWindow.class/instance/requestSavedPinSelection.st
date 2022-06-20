pin management
requestSavedPinSelection

	| index pins |
	
	pins := SMAWindow savedPins collect: [:pin | (pin label, ' (', (pin latLong), ')') asString].
	index := UIManager default chooseFrom: pins title: 'Saved Pins'.
		
	^ index
