as yet unclassified
nearestVertexToPoint: aPoint levels: targetLevels

	| bestVertex bestDistance distance |
	bestVertex := nil.
	bestDistance := nil.
	1 to: vertices size do: [:index |
		((vertices at: index) notNil
			and: [self levelsMatch: targetLevels with: (vertexLevels at: index)]) ifTrue: [
			distance := self distanceFrom: aPoint to: (vertices at: index).
			(bestDistance isNil or: [distance < bestDistance]) ifTrue: [
				bestDistance := distance.
				bestVertex := index]]].
	^ bestVertex