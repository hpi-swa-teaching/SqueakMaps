testing
testMultiplayerKeepsRoundNumberWhilePlayersSwitch

	orchestrator isMultiplayer: true.
	orchestrator startGame.
	self assert: orchestrator currentRoundNumber equals: 1.
	self assert: orchestrator currentPlayer label equals: 'Player 0'.

	orchestrator submitGuess: orchestrator currentLevel coordinates.
	orchestrator advanceRound.
	self assert: orchestrator currentRoundNumber equals: 1.
	self assert: orchestrator currentPlayer label equals: 'Player 1'.

	orchestrator submitGuess: orchestrator currentLevel coordinates.
	orchestrator advanceRound.
	self assert: orchestrator currentRoundNumber equals: 2.
	self assert: orchestrator currentPlayer label equals: 'Player 0'
