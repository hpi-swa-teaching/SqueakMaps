recording
recordFrom: aGGGameOrchestrator

	aGGGameOrchestrator isMultiplayer
		ifTrue: [
			self addScore: aGGGameOrchestrator totalScorep0 for: 'Player 0'.
			self addScore: aGGGameOrchestrator totalScorep1 for: 'Player 1']
		ifFalse: [
			(self leaderboard isHighscore: aGGGameOrchestrator totalScorep0)
				ifTrue: [self addScore: aGGGameOrchestrator totalScorep0 for: nil]]
