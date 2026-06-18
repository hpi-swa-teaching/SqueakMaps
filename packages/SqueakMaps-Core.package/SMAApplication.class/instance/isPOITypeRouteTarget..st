building
isPOITypeRouteTarget: aRouteTarget

	^ (aRouteTarget isKindOf: Array)
		and: [aRouteTarget size >= 2
		and: [(aRouteTarget at: 1) = #poiType]]