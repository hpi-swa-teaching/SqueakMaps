routing
routeFrom: startTarget to: destinationTarget

	| startEndpoint destinationEndpoint path |
	startEndpoint := targetResolver resolve: startTarget.
	destinationEndpoint := targetResolver resolve: destinationTarget.
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
