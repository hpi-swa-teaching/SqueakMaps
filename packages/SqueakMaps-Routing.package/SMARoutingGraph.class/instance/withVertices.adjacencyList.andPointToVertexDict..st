as yet unclassified
withVertices: v adjacencyList: adj andPointToVertexDict: aDictionary

	^ self
		withVertices: v
		adjacencyList: adj
		pointToVertexDict: aDictionary
		vertexLevels: (Array new: v size withAll: OrderedCollection new)