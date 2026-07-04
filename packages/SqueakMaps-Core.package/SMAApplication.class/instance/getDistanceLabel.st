building
getDistanceLabel

	^ {StringMorph new
		contents: ((self route respondsTo: #getDistanceAsString)
			ifTrue: [self route getDistanceAsString]
			ifFalse: ['']);
		yourself}