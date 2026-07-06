testing
testCurrentRoundNumberIncrementsAfterAdvance

	orchestrator startGame.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	orchestrator advanceRound.
	self assert: orchestrator currentRoundNumber equals: 2
