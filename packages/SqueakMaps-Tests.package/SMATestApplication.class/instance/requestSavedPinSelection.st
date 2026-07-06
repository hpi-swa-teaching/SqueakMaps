ui testing
requestSavedPinSelection
	^ self class savedPins isEmpty ifTrue: [0] ifFalse: [1]
