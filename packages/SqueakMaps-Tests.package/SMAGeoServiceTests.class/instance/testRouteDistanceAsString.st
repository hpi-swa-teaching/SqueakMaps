route operations
testRouteDistanceAsString

	| route |
	
	route := SMARoute new.
	self assert: route getDistance equals: 0.
	