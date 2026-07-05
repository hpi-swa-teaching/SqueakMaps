building
nextMensaMenuDate

	| today |

	today := Date today.
	today weekdayIndex = 7 ifTrue: [^ today addDays: 2]. "Saturday -> Monday"
	today weekdayIndex = 1 ifTrue: [^ today addDays: 1]. "Sunday -> Monday"
	^ today
