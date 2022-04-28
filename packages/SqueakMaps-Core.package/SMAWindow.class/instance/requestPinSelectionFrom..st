pin management
requestPinSelectionFrom: aPinList

	| index |
	
	index := UIManager default chooseFrom: 
		(aPinList collect: [:pin | (pin label, ' (', (pin latLong), ')') asString]) title: 'choose a pin'.
	^ index
