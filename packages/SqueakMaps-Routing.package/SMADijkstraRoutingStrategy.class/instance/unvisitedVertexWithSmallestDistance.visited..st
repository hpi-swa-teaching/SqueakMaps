private
unvisitedVertexWithSmallestDistance: distances visited: visited

	| bestVertex bestDistance |
	bestVertex := nil.
	bestDistance := Float infinity.
	distances keysAndValuesDo: [:index :dist |
		((visited at: index) not and: [dist < bestDistance]) ifTrue: [
			bestVertex := index.
			bestDistance := dist]].
	^ bestVertex
