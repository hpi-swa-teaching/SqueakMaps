as yet unclassified
build

	^ SMARoutingGraph new
		withVertices: vertices asArray
		adjacencyList: adjacencyList asArray
		pointToVertexDict: pointIDToVertexIndex
		vertexLevels: vertexLevels asArray;
		yourself