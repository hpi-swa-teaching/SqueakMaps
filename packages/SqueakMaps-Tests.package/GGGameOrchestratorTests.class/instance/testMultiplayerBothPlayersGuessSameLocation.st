testing
testMultiplayerBothPlayersGuessSameLocation

	| level |
	orchestrator isMultiplayer: true.
	orchestrator startGame.
	self assert: orchestrator currentPlayer = false.
	level := orchestrator currentLevel.

	orchestrator submitGuess: level coordinates.
	orchestrator advanceRound.

	self assert: orchestrator currentPlayer = true.
	self assert: orchestrator currentLevel == level
