running
setUp

	super setUp.
	leaderboardEntriesBefore := GGLeaderboard current entries copy.
	GGLeaderboard current clear.
	window := GGWindow new
