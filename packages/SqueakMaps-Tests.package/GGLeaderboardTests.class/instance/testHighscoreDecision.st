testing
testHighscoreDecision

	self assert: (leaderboard isHighscore: 1).
	#(50 40 30 20 10) do: [:score |
		leaderboard addEntry: (self entryNamed: score asString score: score)].

	self assert: (leaderboard isHighscore: 11).
	self deny: (leaderboard isHighscore: 10).
	self deny: (leaderboard isHighscore: 9)
