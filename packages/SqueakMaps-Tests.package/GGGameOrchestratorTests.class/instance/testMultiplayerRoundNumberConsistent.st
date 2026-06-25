testing
testMultiplayerRoundNumberConsistent

	| round |
	orchestrator isMultiplayer: true.
	orchestrator startGame.
	round := orchestrator currentRoundNumber.
	self assert: round = 1.

	"Player 1 guesses the same location, so the round number must not change."
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	orchestrator advanceRound.
	self assert: orchestrator currentRoundNumber = round.

	"Only after both players finished does the round advance."
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	orchestrator advanceRound.
	self assert: orchestrator currentRoundNumber = (round + 1)
