pin management
requestPinSelectionFrom: aPinlist

	| index |
	
	index := UIManager default chooseFrom: 
		(aPinlist collect: [:pin | (pin label, ' (', (pin latLong), ')') asString]) title: 'choose a pin'.
	^ index
