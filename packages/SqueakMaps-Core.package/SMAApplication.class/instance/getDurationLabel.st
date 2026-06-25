building
getDurationLabel

	^ {StringMorph new
		contents: ((self route respondsTo: #getDurationAsString)
			ifTrue: [self route getDurationAsString]
			ifFalse: ['']);
		yourself}
