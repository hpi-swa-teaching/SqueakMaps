leaderboard
addScoreAndShow: aScore

	| name entry |
	name := UIManager default request: 'Name eingeben:'.
	
	[name notNil and: [name size > 0 and: [name size <= 10]]] whileFalse: [name := UIManager default request: 'Name (1-10 Zeichen):'].
	
	entry := LeaderboardEntry new.
	entry playerName: name.
	entry score: aScore.
	
	leaderboard addEntry: entry.
	self showLeaderboard