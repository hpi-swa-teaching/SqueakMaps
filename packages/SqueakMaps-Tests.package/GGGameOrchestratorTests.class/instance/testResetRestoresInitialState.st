testing
testResetRestoresInitialState

	orchestrator isMultiplayer: true.
	orchestrator startGame.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	orchestrator reset.

	self assert: orchestrator isStart.
	self deny: orchestrator isMultiplayer.
	self assert: orchestrator currentLevel isNil.
	self assert: orchestrator roundResults isEmpty.
	self assert: orchestrator totalScorep0 equals: 0.
	self assert: orchestrator totalScorep1 equals: 0
