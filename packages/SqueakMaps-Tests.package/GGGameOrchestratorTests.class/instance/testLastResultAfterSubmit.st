testing
testLastResultAfterSubmit

	| level result |

	orchestrator startGame.
	level := orchestrator currentLevel.
	orchestrator submitGuess: level coordinates.
	result := orchestrator lastResult.
	self assert: result score equals: orchestrator maxRoundScore * level scoreWeight.
	self assert: result level equals: level
