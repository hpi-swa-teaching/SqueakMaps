building
selectedRouteTargetAt: anInteger

	anInteger = 0 ifTrue: [^ nil].
	^ self routeTargets at: anInteger ifAbsent: [^ nil]
