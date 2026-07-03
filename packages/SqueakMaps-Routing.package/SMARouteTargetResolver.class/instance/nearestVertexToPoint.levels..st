as yet unclassified
nearestVertexToPoint: aPoint levels: targetLevels

	| nearestVertex nearestDistance |
	nearestVertex := nil.
	nearestDistance := nil.
	1 to: graph size do: [:index |
		| candidate distance |
		candidate := graph pointAtVertex: index.
		(candidate notNil
			and: [self levelsMatch: targetLevels with: (graph levelsAtVertex: index)]) ifTrue: [
			distance := SMARoutingGeometry distanceFrom: aPoint to: candidate.
			(nearestDistance isNil or: [distance < nearestDistance]) ifTrue: [
				nearestDistance := distance.
				nearestVertex := index]]].
	^ nearestVertex