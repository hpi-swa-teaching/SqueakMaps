building
routeTarget: aRouteTarget equals: anotherRouteTarget

	^ aRouteTarget == anotherRouteTarget or: [
		(aRouteTarget isKindOf: Array)
			and: [anotherRouteTarget isKindOf: Array]
			and: [aRouteTarget = anotherRouteTarget]]