formatting
dateStringFor: aDate

	^ aDate year asString , '-' ,
		(aDate monthIndex printPaddedWith: $0 to: 2) , '-' ,
		(aDate dayOfMonth printPaddedWith: $0 to: 2)