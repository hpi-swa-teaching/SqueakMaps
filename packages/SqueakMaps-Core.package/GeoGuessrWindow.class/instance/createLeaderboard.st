leaderboard
createLeaderboard

	leaderboardBackground := Morph new.
	leaderboardBackground color: (Color white alpha: 0.75).
	
	self addMorph: leaderboardBackground frame: (0.3 @ 0.3 extent: 0.4 @ 0.3)