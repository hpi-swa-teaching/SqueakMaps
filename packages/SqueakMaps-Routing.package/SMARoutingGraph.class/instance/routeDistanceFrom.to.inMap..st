as yet unclassified
routeDistanceFrom: startTarget to: destinationTarget inMap: aMapMorph

	| startPoint destinationPoint startLevels destinationLevels startVertex destinationVertex path |
	startPoint := self pointForRouteTarget: startTarget inMap: aMapMorph.
	destinationPoint := self pointForRouteTarget: destinationTarget inMap: aMapMorph.
	(startPoint isNil or: [destinationPoint isNil]) ifTrue: [^ nil].

	startLevels := self levelsForRouteTarget: startTarget.
	destinationLevels := self levelsForRouteTarget: destinationTarget.
	startVertex := self nearestVertexToPoint: startPoint levels: startLevels.
	destinationVertex := self nearestVertexToPoint: destinationPoint levels: destinationLevels.
	(startVertex isNil or: [destinationVertex isNil]) ifTrue: [^ nil].

	path := self shortestPathFrom: startVertex to: destinationVertex.
	path ifNil: [^ nil].
	^ (self pathDistance: path)
		+ (self distanceFrom: startPoint to: (vertices at: startVertex))
		+ (self distanceFrom: destinationPoint to: (vertices at: destinationVertex))