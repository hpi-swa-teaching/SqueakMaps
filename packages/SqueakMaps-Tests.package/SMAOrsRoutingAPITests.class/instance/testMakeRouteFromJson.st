testing
testMakeRouteFromJson

	| route |
	route := orsAPI makeRouteFrom: self validRouteResponse.
	self assert: route waypoints size equals: 5.
	self assert: route boundingBox equals: (13.128474 @ 52.39385 corner: 13.129373 @ 52.393877).
	self assert: route duration equals: 15.
	self assert: route distance equals: 61
