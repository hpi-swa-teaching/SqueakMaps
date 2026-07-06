testing
testCurrentRoundNumberStartsAtOne

	orchestrator startGame.
	self assert: orchestrator currentRoundNumber equals: 1
