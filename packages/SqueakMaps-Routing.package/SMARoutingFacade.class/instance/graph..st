as yet unclassified
graph: aRoutingGraph

	graph := aRoutingGraph.
	targetResolver := SMARouteTargetResolver forGraph: graph.
	routeLineBuilder := SMARouteLineBuilder forGraph: graph