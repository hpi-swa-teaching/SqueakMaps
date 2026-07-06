running
tearDown

	window ifNotNil: [window delete].
	GGLeaderboard current entries: leaderboardEntriesBefore.
	super tearDown
