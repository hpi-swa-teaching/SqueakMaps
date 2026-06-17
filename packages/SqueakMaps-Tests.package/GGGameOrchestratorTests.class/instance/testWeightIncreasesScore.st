testing
testWeightIncreasesScore

	self assert: (orchestrator scoreForDistance: 200 weight: 3)
		> (orchestrator scoreForDistance: 200 weight: 1)
