select api
requestSavedPinSelection
	| index |

	index := UIManager default chooseFrom: (self class savedPins collect: [:pin | (pin label, ' (', (pin latLong), ')') asString]).
	(index>0)
		ifTrue: [^ self class savedPins at: index]
		ifFalse: [^ nil]
