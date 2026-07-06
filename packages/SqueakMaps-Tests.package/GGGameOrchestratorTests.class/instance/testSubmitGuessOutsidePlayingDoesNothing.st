testing
testSubmitGuessOutsidePlayingDoesNothing

	self assert: (orchestrator submitGuess: nil) isNil.
	self assert: orchestrator roundResults isEmpty.

	orchestrator startGame.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	self assert: (orchestrator submitGuess: orchestrator currentLevel coordinates) isNil.
	self assert: orchestrator roundResults size equals: 1
