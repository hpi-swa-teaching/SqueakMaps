as yet unclassified
testDijkstraStrategyFindsShortestPath

	| graph path ids |
	graph := self routingGraph.
	path := SMADijkstraRoutingStrategy new
		shortestPathIn: graph
		from: (graph vertexOfPointID: 1)
		to: (graph vertexOfPointID: 3).
	ids := self pointIdsForPath: path in: graph.
	self assert: ids asArray equals: #(1 2 3)