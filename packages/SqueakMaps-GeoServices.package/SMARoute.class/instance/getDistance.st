calculating
getDistance
	
	| kilometerInMeters |
	
	kilometerInMeters := 1000.
	^ self distance isNil
		ifTrue: [0]
		ifFalse: [(self distance / kilometerInMeters)]