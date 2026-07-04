building
addEdgeFrom: u to: v levels: levels

	u = v ifTrue: [^ self].
	((adjacencyList at: u) anySatisfy: [:edge | (edge otherVertex: u) = v]) ifTrue: [^ self].
	(adjacencyList at: u) add: (SMARoutingGraphEdge new
		u: u;
		v: v;
		levels: levels;
		yourself).
	(adjacencyList at: v) add: (SMARoutingGraphEdge new
		u: v;
		v: u;
		levels: levels;
		yourself)
