route operations
testRouteDuration

	| route |
	
	route := SMARoute new.
	self assert: route getDurationMinutes equals: 0.
	