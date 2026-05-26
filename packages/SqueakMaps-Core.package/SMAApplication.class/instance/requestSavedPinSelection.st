pin management
requestSavedPinSelection

	| index pins |
	
	pins := self class savedPins collect: [:pin | 
		('(', pin category title, ') ', pin alias) asString].
	index := UIManager default chooseFrom: pins title: 'Saved Pins'.
		
	^ index
