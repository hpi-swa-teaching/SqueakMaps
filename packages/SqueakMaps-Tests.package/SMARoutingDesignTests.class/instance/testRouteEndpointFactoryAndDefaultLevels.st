testing
testRouteEndpointFactoryAndDefaultLevels

	| point endpoint |
	point := self pointId: 1 lat: 0 lon: 0.
	endpoint := SMARouteEndpoint point: point levels: nil vertex: 3.
	self assert: endpoint point == point.
	self assert: endpoint levels isEmpty.
	self assert: endpoint vertex equals: 3.
	endpoint levels: #(1 2).
	self assert: endpoint levels equals: #(1 2)
