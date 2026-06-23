leaderboard
endGame

	| score |
	score := gameOrchestrator totalScore.
	
	(leaderboard isHighscore: score)
		ifTrue: [self askForNameAndAddScore: score]
		ifFalse: [self showLeaderboard]