testing
testTotalScoreAccumulates

	| scoreAfterFirst |

    orchestrator startGame.
    orchestrator submitGuess: orchestrator currentLevel coordinates.
    scoreAfterFirst := orchestrator totalScorep0 + orchestrator totalScorep1.
    orchestrator advanceRound.
    orchestrator submitGuess: orchestrator currentLevel coordinates.
    self assert: (orchestrator totalScorep0 + orchestrator totalScorep1) > scoreAfterFirst.