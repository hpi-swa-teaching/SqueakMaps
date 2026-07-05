building
addVertex: aPoint levels: levels

	vertices add: aPoint.
	adjacencyList add: OrderedCollection new.
	vertexLevels add: OrderedCollection new.
	aPoint id ifNotNil: [pointIDToVertexIndex at: aPoint id put: vertices size].
	self addLevels: levels toVertex: vertices size.
	^ vertices size
