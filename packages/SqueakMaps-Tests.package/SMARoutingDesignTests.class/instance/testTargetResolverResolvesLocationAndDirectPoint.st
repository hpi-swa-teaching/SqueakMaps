testing
testTargetResolverResolvesLocationAndDirectPoint

	| builder firstPoint secondPoint graph resolver location locationEndpoint pointEndpoint |
	builder := SMARoutingGraphBuilder new.
	firstPoint := self pointId: 1 lat: 0 lon: 0.
	secondPoint := self pointId: 2 lat: 10 lon: 10.
	builder addVertex: firstPoint levels: #().
	builder addVertex: secondPoint levels: #().
	graph := builder build.
	resolver := SMARouteTargetResolver forGraph: graph.

	location := SMALocation new
		coordinates: (SMAGeoCoordinate newLong: 0.1 lat: 0.1);
		yourself.
	locationEndpoint := resolver resolve: location.
	self assert: locationEndpoint vertex equals: 1.
	self assert: locationEndpoint point lon equals: 0.1.

	pointEndpoint := resolver resolve: secondPoint.
	self assert: pointEndpoint vertex equals: 2.
	self assert: pointEndpoint point == secondPoint
