as yet unclassified
testFacadeBuildsRouteLine

	| graph facade route |
	graph := self routingGraph.
	facade := SMARoutingFacade forGraph: graph.
	route := facade
		routeFrom: (graph pointAtVertex: (graph vertexOfPointID: 1))
		to: (graph pointAtVertex: (graph vertexOfPointID: 3)).
	self assert: route notNil.
	"Path 1→2→3: start and destination coincide with graph vertices, so no connection segments are added."
	self assert: route segments size equals: 2.
	self assert: route points size equals: 3