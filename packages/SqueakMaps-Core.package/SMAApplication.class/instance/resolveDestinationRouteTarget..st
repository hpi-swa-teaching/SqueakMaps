building
resolveDestinationRouteTarget: aRouteTarget

	^ aRouteTarget
		resolveFrom: self selectedStartRouteTarget
		among: self tiledMapMorph pointsOfInterest