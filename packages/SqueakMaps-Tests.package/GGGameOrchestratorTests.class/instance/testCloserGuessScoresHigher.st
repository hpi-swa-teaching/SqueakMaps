testing
testCloserGuessScoresHigher

	self assert: (orchestrator scoreForDistance: 100 weight: 1)
		> (orchestrator scoreForDistance: 500 weight: 1)
