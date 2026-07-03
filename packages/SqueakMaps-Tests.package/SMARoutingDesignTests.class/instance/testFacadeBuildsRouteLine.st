as yet unclassified
testFacadeBuildsRouteLine

	| graph facade route |
	graph := self routingGraph.
	facade := SMARoutingFacade forGraph: graph.
	route := facade
		routeFrom: (graph pointAtVertex: (graph vertexOfPointID: 1))
		to: (graph pointAtVertex: (graph vertexOfPointID: 3))
		inMap: nil.
	self assert: route notNil.
	self assert: route segments size equals: 4.
	self assert: route points size equals: 5