as yet unclassified
resolve: aTarget inMap: aMapMorph

	| point levels vertex |
	point := self pointForRouteTarget: aTarget inMap: aMapMorph.
	point ifNil: [^ nil].
	levels := self levelsForRouteTarget: aTarget.
	vertex := self nearestVertexToPoint: point levels: levels.
	vertex ifNil: [^ nil].
	^ SMARouteEndpoint point: point levels: levels vertex: vertex