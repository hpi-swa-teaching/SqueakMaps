route operations
testRouteDurationAsString

	| route |
	
	route := SMARoute new.
	self assert: route getDuration equals: ''.
	
	route duration: 60.
	self assert: route getDuration equals: '0h 1min'.
	
	route duration: 12345.
	self assert: route getDuration equals: '3h 26min'
	