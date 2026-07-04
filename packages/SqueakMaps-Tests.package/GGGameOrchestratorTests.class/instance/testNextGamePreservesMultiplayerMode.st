testing
testNextGamePreservesMultiplayerMode
	"Regression: after a multiplayer game ends, 'Next game' (startGame on an ended game) must stay in
	multiplayer instead of silently falling back to single-player when reset clears the mode flag."

	| steps |
	orchestrator isMultiplayer: true.
	orchestrator startGame.
	steps := 0.
	[orchestrator isEnded] whileFalse: [
		orchestrator isPlaying ifTrue: [orchestrator submitGuess: orchestrator currentLevel coordinates].
		orchestrator isEvaluating ifTrue: [orchestrator advanceRound].
		steps := steps + 1.
		steps > 100 ifTrue: [^ self assert: false description: 'Game did not end']].
	orchestrator startGame.
	self assert: orchestrator isMultiplayer.
	self assert: orchestrator isPlaying
