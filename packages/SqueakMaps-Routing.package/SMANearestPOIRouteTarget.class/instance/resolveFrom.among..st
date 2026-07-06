resolving
resolveFrom: aStartTarget among: aCollectionOfPOIs

	| candidates nearestPOI nearestDistance distance |

	aStartTarget ifNil: [^ nil].
	candidates := aCollectionOfPOIs select: [:poi |
		poi isKindOf: self poiClass].
	candidates isEmpty ifTrue: [^ nil].
	candidates do: [:poi |
		distance := self distanceFrom: aStartTarget to: poi.
		(nearestDistance isNil or: [distance < nearestDistance]) ifTrue: [
			nearestDistance := distance.
			nearestPOI := poi]].
	^ SMAConcreteRouteTarget
		on: nearestPOI
		label: self routeLabel
