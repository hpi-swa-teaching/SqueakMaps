accessing
vertexOfPointID: aPointID

	^ pointIDToVertexIndex at: aPointID ifAbsent: [nil].
