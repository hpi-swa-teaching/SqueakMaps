calculating
getDistanceAsString

	^ self distance isNil
		ifTrue: [String empty]
		ifFalse: [((self distance / 1000) printShowingDecimalPlaces: 2) asString , 'km']