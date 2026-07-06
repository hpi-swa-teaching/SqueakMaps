testing
testGraphBuilderIgnoresSelfAndDuplicateEdges

	| builder first second graph incident |
	builder := SMARoutingGraphBuilder new.
	first := builder addVertex: (self pointId: 1 lat: 0 lon: 0) levels: #(0).
	second := builder addVertex: (self pointId: 2 lat: 0 lon: 1) levels: #(1).
	builder addLevels: #(1 2) toVertex: first.
	builder addEdgeFrom: first to: first levels: #(0).
	builder addEdgeFrom: first to: second levels: #(0 1).
	builder addEdgeFrom: first to: second levels: #(0 1).
	graph := builder build.

	incident := OrderedCollection new.
	graph incidentEdgesOf: first do: [:edge | incident add: edge].
	self assert: incident size equals: 1.
	self assert: (graph levelsAtVertex: first) asArray equals: #(0 1 2).
	self assert: (graph edgeFrom: second to: first) notNil
