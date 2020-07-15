select api
requestSavedPinSelection
	| index |

	index := UIManager default chooseFrom: (self class savedPins collect: [:pin | (pin key, ' (', (pin value latLong), ')') asString]).
	(index>0)
		ifTrue: [^ (self class savedPins at: index)]
		ifFalse: [^ nil]
