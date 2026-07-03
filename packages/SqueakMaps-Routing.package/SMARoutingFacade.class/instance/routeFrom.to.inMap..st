as yet unclassified
routeFrom: startTarget to: destinationTarget inMap: aMapMorph

	| startEndpoint destinationEndpoint path |
	startEndpoint := targetResolver resolve: startTarget inMap: aMapMorph.
	destinationEndpoint := targetResolver resolve: destinationTarget inMap: aMapMorph.
	(startEndpoint isNil or: [destinationEndpoint isNil]) ifTrue: [^ nil].
	path := strategy
		shortestPathIn: graph
		from: startEndpoint vertex
		to: destinationEndpoint vertex.
	path ifNil: [^ nil].
	^ routeLineBuilder
		routeLineForPath: path
		fromEndpoint: startEndpoint
		toEndpoint: destinationEndpoint