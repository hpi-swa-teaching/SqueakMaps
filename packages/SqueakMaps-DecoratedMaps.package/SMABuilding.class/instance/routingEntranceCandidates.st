routing
routingEntranceCandidates
	"Returns the preferred entry points for routing into this building.
	 Prefers main-entrance nodes, then entrance nodes, then door nodes."

	| candidates |
	candidates := points select: [:point | point isMainEntranceNode].
	candidates isEmpty ifTrue: [candidates := points select: [:point | point isEntranceNode]].
	candidates isEmpty ifTrue: [candidates := points select: [:point | point isDoorNode]].
	^ candidates