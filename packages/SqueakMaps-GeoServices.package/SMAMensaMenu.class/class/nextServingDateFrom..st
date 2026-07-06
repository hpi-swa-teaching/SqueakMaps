date calculation
nextServingDateFrom: aDate

	aDate weekdayIndex = 7 ifTrue: [^ aDate addDays: 2].
	aDate weekdayIndex = 1 ifTrue: [^ aDate addDays: 1].
	^ aDate
