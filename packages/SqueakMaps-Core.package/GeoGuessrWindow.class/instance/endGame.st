leaderboard
endGame

	| score |
	score := gameOrchestrator totalScorep0.
	
	(leaderboard isHighscore: score)
		ifTrue: [self askForNameAndAddScore: score]
		ifFalse: [self showLeaderboard]