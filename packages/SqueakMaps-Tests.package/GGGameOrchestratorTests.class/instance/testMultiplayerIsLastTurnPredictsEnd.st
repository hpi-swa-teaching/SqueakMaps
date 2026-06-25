testing
testMultiplayerIsLastTurnPredictsEnd

	| steps wasLast sawLastTurn |
	orchestrator isMultiplayer: true.
	orchestrator startGame.
	steps := 0.
	sawLastTurn := false.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [orchestrator submitGuess: orchestrator currentLevel coordinates].
		orchestrator isEvaluating ifTrue: [
			wasLast := orchestrator isLastTurn.
			orchestrator advanceRound.
			"isLastTurn must be true exactly when advancing ends the game."
			self assert: wasLast = orchestrator isEnded.
			wasLast ifTrue: [sawLastTurn := true]].
		steps := steps + 1.
		steps > 100 ifTrue: [^ self assert: false description: 'Game did not end']].
	self assert: sawLastTurn
