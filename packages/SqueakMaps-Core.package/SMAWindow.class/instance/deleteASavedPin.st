select api
deleteASavedPin

	| pin |
	
	pin := self requestSavedPinSelection.
	(pin notNil)
		ifTrue: [	SMAWindow savedPins remove: pin]
