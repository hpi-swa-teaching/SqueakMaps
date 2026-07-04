leaderboard
endGame
	"Offer to record the score(s) on the leaderboard, then reveal it. Multiplayer always prompts both
	players (labelled Player 0 / Player 1); single-player asks once, only when the score makes the board."

	gameOrchestrator isMultiplayer
		ifTrue: [
			self addScore: gameOrchestrator totalScorep0 for: 'Player 0'.
			self addScore: gameOrchestrator totalScorep1 for: 'Player 1']
		ifFalse: [
			(leaderboard isHighscore: gameOrchestrator totalScorep0)
				ifTrue: [self addScore: gameOrchestrator totalScorep0 for: nil]].
	self showLeaderboard
