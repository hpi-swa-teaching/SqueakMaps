routing
resolve: aTarget

	| point levels vertex |
	point := self pointForRouteTarget: aTarget.
	point ifNil: [^ nil].
	levels := self levelsForRouteTarget: aTarget.
	vertex := self nearestVertexToPoint: point levels: levels.
	vertex ifNil: [^ nil].
	^ SMARouteEndpoint point: point levels: levels vertex: vertex
