testing
testMultiplayerFinalLevelStillHasRoundForSecondPlayer
	"Regression: on the last level the first player's guess must not offer 'End game' - the second
	player still plays that level, so hasNextRound stays true until the second player has guessed."

	orchestrator isMultiplayer: true.
	orchestrator startGame.
	"Play every level before the final one (both players each round)."
	[orchestrator levelManager hasMoreLevels] whileTrue: [
		orchestrator submitGuess: orchestrator currentLevel coordinates.
		orchestrator advanceRound.
		orchestrator submitGuess: orchestrator currentLevel coordinates.
		orchestrator advanceRound].
	"Final level, first player guesses - the second player is still to come."
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	self assert: orchestrator hasNextRound
		description: 'Second player still plays the final level'.
	orchestrator advanceRound.
	"Final level, second player guesses - now the game may end."
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	self deny: orchestrator hasNextRound
		description: 'Final guess of the game'.
	orchestrator advanceRound.
	self assert: orchestrator isEnded
