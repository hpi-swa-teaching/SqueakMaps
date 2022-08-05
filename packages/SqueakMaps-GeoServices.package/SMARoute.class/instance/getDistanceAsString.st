calculating
getDistanceAsString
	
	| kilometerInMeters |
	
	kilometerInMeters := 1000.
	^ self distance isNil
		ifTrue: [String empty]
		ifFalse: [(self distance / kilometerInMeters printShowingDecimalPlaces: 2) asString , 'km']