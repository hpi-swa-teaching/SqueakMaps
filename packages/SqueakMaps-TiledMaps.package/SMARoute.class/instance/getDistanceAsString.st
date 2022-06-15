as yet unclassified
getDistanceAsString

	^ self distance isNil
		ifTrue: [String empty]
		ifFalse: [((self distance / 1000) roundTo: 0.1) asString , 'km'].