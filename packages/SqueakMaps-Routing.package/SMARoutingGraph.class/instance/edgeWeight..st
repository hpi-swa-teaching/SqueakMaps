as yet unclassified
edgeWeight: anEdge

	^ SMARoutingGeometry
		distanceFrom: (vertices at: anEdge u)
		to: (vertices at: anEdge v)