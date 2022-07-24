route operations
testRouteDistanceAsString

	| route |
	
	route := SMARoute new.
	self assert: route getDistanceAsString equals: ''.
	
	route distance: 123456789.
	self assert: route getDistanceAsString equals: '123456.79km'
	