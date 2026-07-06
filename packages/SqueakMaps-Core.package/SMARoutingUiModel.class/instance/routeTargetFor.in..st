building
routeTargetFor: aRouteTarget in: aCollectionOfRouteTargets

	aRouteTarget ifNil: [^ nil].
	(aCollectionOfRouteTargets includes: aRouteTarget) ifTrue: [^ aRouteTarget].
	^ aCollectionOfRouteTargets
		detect: [:target | target place = aRouteTarget]
		ifNone: [nil]
