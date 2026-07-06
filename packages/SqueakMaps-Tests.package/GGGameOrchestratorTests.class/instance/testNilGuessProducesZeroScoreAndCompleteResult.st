testing
testNilGuessProducesZeroScoreAndCompleteResult

	| level result |
	orchestrator startGame.
	level := orchestrator currentLevel.
	result := orchestrator submitGuess: nil.

	self assert: result level == level.
	self assert: result guess isNil.
	self assert: result distanceInMeters isNil.
	self assert: result score equals: 0.
	self assert: orchestrator lastResult == result.
	self assert: orchestrator totalScorep0 equals: 0
