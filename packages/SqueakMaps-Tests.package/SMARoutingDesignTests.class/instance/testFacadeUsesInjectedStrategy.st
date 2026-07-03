as yet unclassified
testFacadeUsesInjectedStrategy

	| graph facade strategy route |
	graph := self routingGraph.
	strategy := SMATestRoutingStrategy new.
	strategy path: {
		graph vertexOfPointID: 1.
		graph vertexOfPointID: 4.
		graph vertexOfPointID: 3 }.
	facade := SMARoutingFacade forGraph: graph.
	facade strategy: strategy.
	route := facade
		routeFrom: (graph pointAtVertex: (graph vertexOfPointID: 1))
		to: (graph pointAtVertex: (graph vertexOfPointID: 3))
		inMap: nil.
	self assert: strategy wasCalled.
	self assert: route notNil