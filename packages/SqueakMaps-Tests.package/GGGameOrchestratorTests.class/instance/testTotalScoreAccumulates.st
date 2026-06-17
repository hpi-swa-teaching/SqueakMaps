testing
testTotalScoreAccumulates

	| scoreAfterFirst |

	orchestrator startGame.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	scoreAfterFirst := orchestrator totalScore.
	orchestrator advanceRound.
	orchestrator submitGuess: orchestrator currentLevel coordinates.
	self assert: orchestrator totalScore > scoreAfterFirst
