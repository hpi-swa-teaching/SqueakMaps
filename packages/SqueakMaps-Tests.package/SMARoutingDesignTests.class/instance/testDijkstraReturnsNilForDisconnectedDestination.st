testing
testDijkstraReturnsNilForDisconnectedDestination

	| builder first second third graph strategy |
	builder := SMARoutingGraphBuilder new.
	first := builder addVertex: (self pointId: 1 lat: 0 lon: 0) levels: #().
	second := builder addVertex: (self pointId: 2 lat: 0 lon: 1) levels: #().
	third := builder addVertex: (self pointId: 3 lat: 10 lon: 10) levels: #().
	builder addEdgeFrom: first to: second levels: #().
	graph := builder build.
	strategy := SMADijkstraRoutingStrategy new.

	self assert: (strategy shortestPathIn: graph from: first to: third) isNil.
	self assert: (strategy shortestPathIn: graph from: first to: first) asArray equals: {first}
