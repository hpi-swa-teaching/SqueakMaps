testing
testRoutingGraphPathDistanceAndInvalidPath

	| graph one two three |
	graph := self routingGraph.
	one := graph vertexOfPointID: 1.
	two := graph vertexOfPointID: 2.
	three := graph vertexOfPointID: 3.

	self assert: (graph pathDistance: {one. two. three}) equals: 2.
	self assert: (graph pathDistance: {one}) equals: 0.
	self assert: (graph pathDistance: {one. three}) isNil
