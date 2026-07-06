updating
formatTime
	|m s|
	
	m := self remainingSeconds // 60.
	s := self remainingSeconds \\ 60.
	self label contents: (
		'0', m asString, ':', 
		(s < 10
			ifTrue: ['0', s asString]
			ifFalse: [s asString])
	) printString.