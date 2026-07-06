testing
testRoundResultsAccumulate

	orchestrator startGame.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	self assert: orchestrator roundResults size equals: 1.
	orchestrator advanceRound.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	self assert: orchestrator roundResults size equals: 2
