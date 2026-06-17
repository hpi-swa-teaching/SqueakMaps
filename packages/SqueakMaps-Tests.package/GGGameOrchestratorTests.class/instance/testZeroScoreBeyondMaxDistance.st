testing
testZeroScoreBeyondMaxDistance

	self assert: (orchestrator scoreForDistance: 5000 weight: 5) equals: 0
