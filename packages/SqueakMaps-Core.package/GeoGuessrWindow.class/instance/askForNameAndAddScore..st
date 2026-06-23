leaderboard
askForNameAndAddScore: aScore

	| name entry |
	name := UIManager default request: 'Name eingeben:'.
	
	name ifNotNil: [
		entry := LeaderboardEntry new.
		entry playerName: name.
		entry score: aScore.
		
		leaderboard addEntry: entry].
	
	self showLeaderboard