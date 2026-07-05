initialization
graph: aRoutingGraph

	graph := aRoutingGraph.
	targetResolver := SMARouteTargetResolver forGraph: graph.
	routeLineBuilder := SMARouteLineAssembler forGraph: graph
