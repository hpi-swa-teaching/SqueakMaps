testing
testSinglePlayerFinalGuessHasNoNextRound
	"Single-player: every guess but the last offers 'Next round', the final guess offers 'End game'."

	| total round |
	orchestrator startGame.
	total := orchestrator totalRounds.
	round := 0.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [
			round := round + 1.
			orchestrator submitGuess: orchestrator currentLevel coordinates.
			round < total
				ifTrue: [self assert: orchestrator hasNextRound]
				ifFalse: [self deny: orchestrator hasNextRound]].
		orchestrator isEvaluating ifTrue: [orchestrator advanceRound]].
	self assert: round equals: total
