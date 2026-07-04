initialization
forGraph: aGraph using: aStrategy

	^ (self forGraph: aGraph) strategy: aStrategy; yourself
