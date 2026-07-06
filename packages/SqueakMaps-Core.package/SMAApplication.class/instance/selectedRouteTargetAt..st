building
selectedRouteTargetAt: anIndex

	anIndex = 0 ifTrue: [^ nil].
	^ self routeTargets at: anIndex ifAbsent: [^ nil]
