leaderboard
endGame

	| score0 score1 |
	score0 := gameOrchestrator totalScorep0.
	score1 := gameOrchestrator totalScorep1.
	
	gameOrchestrator isMultiplayer
		ifFalse: [
			(leaderboard isHighscore: score0)
				ifTrue: [self addScoreAndShow: score0]
				ifFalse: [self showLeaderboard]]
		ifTrue: [
			(leaderboard isHighscore: score0) ifTrue: [self addScore: score0].
			(leaderboard isHighscore: score1)
				ifTrue: [self addScoreAndShow: score1]
				ifFalse: [self showLeaderboard]]