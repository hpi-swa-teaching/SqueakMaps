testing
testRouteLineAssemblerHandlesEmptyPath

	| endpoint route |
	endpoint := SMARouteEndpoint point: (self pointId: nil lat: 0 lon: 0) levels: #() vertex: nil.
	route := (SMARouteLineAssembler forGraph: self routingGraph)
		routeLineForPath: #()
		fromEndpoint: endpoint
		toEndpoint: endpoint.
	self assert: route points isEmpty.
	self assert: route segments isEmpty
