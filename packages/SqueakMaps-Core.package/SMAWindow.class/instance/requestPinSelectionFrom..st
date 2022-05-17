pin management
requestPinSelectionFrom: aPinList

	| index |
	
	index := UIManager default chooseFrom: 
		(aPinList collect: [:pin | (pin label, ' (', (pin longLat), ')') asString]) title: 'choose a pin'.
	^ index
