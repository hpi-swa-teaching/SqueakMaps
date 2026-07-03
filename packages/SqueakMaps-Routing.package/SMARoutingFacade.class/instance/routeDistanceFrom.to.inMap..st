as yet unclassified
routeDistanceFrom: startTarget to: destinationTarget inMap: aMapMorph

	| startEndpoint destinationEndpoint path |
	startEndpoint := targetResolver resolve: startTarget inMap: aMapMorph.
	destinationEndpoint := targetResolver resolve: destinationTarget inMap: aMapMorph.
	(startEndpoint isNil or: [destinationEndpoint isNil]) ifTrue: [^ nil].
	path := strategy
		shortestPathIn: graph
		from: startEndpoint vertex
		to: destinationEndpoint vertex.
	path ifNil: [^ nil].
	^ (graph pathDistance: path)
		+ (SMARoutingGeometry distanceFrom: startEndpoint point to: (graph pointAtVertex: startEndpoint vertex))
		+ (SMARoutingGeometry distanceFrom: destinationEndpoint point to: (graph pointAtVertex: destinationEndpoint vertex))