pin management
requestSavedPinSelection

	| index |
	
	index := UIManager default chooseFrom: 
		(SMAWindow savedPins collect: [:pin | (pin label, ' (', (pin latLong), ')') asString]) title: 'Saved Pins'.
		
	^ index
