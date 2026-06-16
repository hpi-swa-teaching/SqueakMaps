accessing
otherVertex: aVertex

	^ aVertex = u ifTrue: [v] ifFalse: [u]