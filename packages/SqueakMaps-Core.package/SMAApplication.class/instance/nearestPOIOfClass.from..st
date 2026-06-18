building
nearestPOIOfClass: aPOIClass from: aStartTarget

	| candidates nearestPOI nearestDistance distance |
	aStartTarget ifNil: [^ nil].
	candidates := self tiledMapMorph pointsOfInterest select: [:poi |
		poi isKindOf: aPOIClass].
	candidates isEmpty ifTrue: [^ nil].

	nearestPOI := nil.
	nearestDistance := nil.
	candidates do: [:poi |
		distance := self routingGraph
			routeDistanceFrom: aStartTarget
			to: poi
			inMap: self tiledMapMorph.
		distance ifNotNil: [
			(nearestDistance isNil or: [distance < nearestDistance]) ifTrue: [
				nearestDistance := distance.
				nearestPOI := poi]]].

	^ nearestPOI ifNil: [candidates first]