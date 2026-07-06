testing
testAdvanceThroughAllRoundsEndsGame

	| expectedRounds |
	expectedRounds := orchestrator totalRounds.
	orchestrator startGame.

	1 to: expectedRounds do: [:round |
		self assert: orchestrator isPlaying.
		self assert: orchestrator currentRoundNumber equals: round.
		self assert: (orchestrator submitGuess: orchestrator currentLevel coordinates) notNil.
		self assert: orchestrator isEvaluating.
		round < expectedRounds
			ifTrue: [self assert: orchestrator hasNextRound]
			ifFalse: [self deny: orchestrator hasNextRound].
		orchestrator advanceRound].

	self assert: orchestrator isEnded.
	self assert: orchestrator roundResults size equals: expectedRounds
