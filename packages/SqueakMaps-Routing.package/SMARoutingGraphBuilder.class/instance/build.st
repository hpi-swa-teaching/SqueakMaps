building
build

	^ SMARoutingGraph new
		withVertices: vertices asArray
		adjacencyList: adjacencyList asArray
		pointToVertexDict: pointIDToVertexIndex copy
		vertexLevels: vertexLevels asArray;
		yourself
