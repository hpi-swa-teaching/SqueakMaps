building
routeLineForPath: aCollectionOfVertices fromEndpoint: startEndpoint toEndpoint: destinationEndpoint

	^ self
		routeLineForPath: aCollectionOfVertices
		fromPoint: startEndpoint point
		toPoint: destinationEndpoint point
		startLevels: startEndpoint levels
		destinationLevels: destinationEndpoint levels
