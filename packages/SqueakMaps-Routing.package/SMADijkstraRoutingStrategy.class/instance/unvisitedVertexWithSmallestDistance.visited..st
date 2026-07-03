as yet unclassified
unvisitedVertexWithSmallestDistance: distances visited: visited

	| bestVertex bestDistance |
	bestVertex := nil.
	bestDistance := 1.0e100.
	1 to: distances size do: [:index |
		((visited at: index) not and: [(distances at: index) < bestDistance]) ifTrue: [
			bestVertex := index.
			bestDistance := distances at: index]].
	^ bestVertex