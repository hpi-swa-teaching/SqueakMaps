as yet unclassified
testMakeRouteFromJSON

	| orsAPI route bbox points |
	orsAPI := SMAORSRoutingAPI new.
	route := orsAPI makeRouteFrom: self mockJson.
	bbox := route boundingBox.
	points := route points.
	
	self assert: bbox size equals: 4.
	self assert: points notEmpty.
	