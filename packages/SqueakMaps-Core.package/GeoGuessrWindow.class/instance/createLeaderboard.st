leaderboard
createLeaderboard

	leaderboardBackground := SystemWindow new.
	leaderboardBackground setLabel: 'Leaderboard'.
	leaderboardBackground color: (Color white alpha: 0.75).
	leaderboardBackground borderColor: Color transparent.
	
	self addMorph: leaderboardBackground frame: (0.3 @ 0.3 extent: 0.4 @ 0.3)