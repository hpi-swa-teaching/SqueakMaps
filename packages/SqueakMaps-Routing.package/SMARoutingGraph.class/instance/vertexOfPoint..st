as yet unclassified
vertexOfPoint: aPoint

	^ pointIDToVertexIndex at: aPoint id ifAbsent: [nil].