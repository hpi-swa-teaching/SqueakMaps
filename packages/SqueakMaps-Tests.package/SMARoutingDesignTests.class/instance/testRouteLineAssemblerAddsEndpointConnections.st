testing
testRouteLineAssemblerAddsEndpointConnections

	| graph path startPoint destinationPoint startEndpoint destinationEndpoint route |
	graph := self routingGraph.
	path := {
		graph vertexOfPointID: 1.
		graph vertexOfPointID: 2.
		graph vertexOfPointID: 3 }.
	startPoint := self pointId: nil lat: 0 lon: -0.1.
	destinationPoint := self pointId: nil lat: 0 lon: 2.1.
	startEndpoint := SMARouteEndpoint point: startPoint levels: #(0) vertex: path first.
	destinationEndpoint := SMARouteEndpoint point: destinationPoint levels: #(0) vertex: path last.

	route := (SMARouteLineAssembler forGraph: graph)
		routeLineForPath: path
		fromEndpoint: startEndpoint
		toEndpoint: destinationEndpoint.
	self assert: route points size equals: 5.
	self assert: route segments size equals: 4.
	self assert: route segments first third equals: #(0).
	self assert: route segments last third equals: #(0)
