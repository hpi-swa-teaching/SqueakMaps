as yet unclassified
edgeWeight: anEdge

	^ self
		distanceFrom: (vertices at: anEdge u)
		to: (vertices at: anEdge v)