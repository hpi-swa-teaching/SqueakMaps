routing
routingEntranceCandidates
	"Returns the door nodes of this room as preferred entry points for routing."

	^ points select: [:point | point isDoorNode]