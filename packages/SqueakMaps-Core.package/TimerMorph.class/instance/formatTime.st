as yet unclassified
formatTime
	|m s|
	
	m := remainingSeconds // 60.
	s := remainingSeconds \\ 60.
	label contents: (
		'0', m asString, ':', 
		(s < 10
			ifTrue: ['0', s asString]
			ifFalse: [s asString])
	) printString.