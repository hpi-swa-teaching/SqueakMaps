building
locationForRouteTarget: aRouteTarget

	| point coordinate label delta |
	(aRouteTarget isKindOf: SMALocation) ifTrue: [^ aRouteTarget].
	point := self routingGraph
		pointForRouteTarget: aRouteTarget
		inMap: self tiledMapMorph.
	point ifNil: [^ nil].
	coordinate := SMAGeoCoordinate newLong: point lon lat: point lat.
	label := (self routeTargets
		detect: [:association | association value == aRouteTarget]
		ifNone: [nil])
			ifNil: ['']
			ifNotNil: [:association | association key].
	delta := 0.00005 @ 0.00005.
	^ SMALocation new
		label: label;
		coordinates: coordinate;
		boundingBox: (coordinate convertToPoint - delta corner: coordinate convertToPoint + delta);
		yourself
