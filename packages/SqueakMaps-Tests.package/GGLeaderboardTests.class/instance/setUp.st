running
setUp

	super setUp.
	previousEntries := GGLeaderboard current entries copy.
	GGLeaderboard current clear.
	leaderboard := GGLeaderboard new
