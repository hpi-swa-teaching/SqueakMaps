testing
testMultiplayerEndsAfterBothPlayers

	| steps |
	orchestrator isMultiplayer: true.
	orchestrator startGame.
	steps := 0.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [orchestrator submitGuess: orchestrator currentLevel coordinates].
		orchestrator isEvaluating ifTrue: [orchestrator advanceRound].
		steps := steps + 1.
		steps > 100 ifTrue: [^ self assert: false description: 'Game did not end']].

	self assert: orchestrator isEnded.
	"Both players guessed every location exactly, so both score and play every round."
	self assert: orchestrator roundResults size = (orchestrator totalRounds * 2).
	self assert: orchestrator totalScorep0 > 0.
	self assert: orchestrator totalScorep1 > 0
