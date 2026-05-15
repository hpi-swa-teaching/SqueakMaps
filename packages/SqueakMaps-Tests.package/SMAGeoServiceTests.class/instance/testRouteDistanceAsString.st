route operations
testRouteDistanceAsString

	| route |
	
	route := SMARoute new.
	self assert: route getDistance equals: ''.
	
	route distance: 123456789.
	self assert: route getDistance equals: '123456.79km'
	