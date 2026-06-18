testing
testSubmitExactGuessGivesMaxScore

	| level result |

	orchestrator startGame.
	level := orchestrator currentLevel.
	result := orchestrator submitGuess: level coordinates.
	self assert: orchestrator isEvaluating.
	self assert: result score equals: orchestrator maxRoundScore * level scoreWeight
