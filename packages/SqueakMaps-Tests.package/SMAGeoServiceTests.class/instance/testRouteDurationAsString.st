route operations
testRouteDurationAsString

	| route |
	
	route := SMARoute new.
	self assert: route getDurationAsString equals: ''.
	
	route duration: 60.
	self assert: route getDurationAsString equals: '0h 1min'.
	
	route duration: 12345.
	self assert: route getDurationAsString equals: '3h 26min'.
	