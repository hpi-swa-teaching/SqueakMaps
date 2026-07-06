testing
testAdvanceRoundOutsideEvaluationDoesNothing

	orchestrator startGame.
	self assert: orchestrator isPlaying.
	orchestrator advanceRound.
	self assert: orchestrator isPlaying.
	self assert: orchestrator roundResults isEmpty
