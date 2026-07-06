building
resolveRouteTarget: aRouteTarget from: aStartTarget

	aRouteTarget ifNil: [^ nil].
	^ aRouteTarget
		resolveFrom: aStartTarget
		among: self targetSource pointsOfInterest
