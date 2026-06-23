leaderboard
addLeaderboardTitle

	| title |
	title := StringMorph contents: 'Leaderboard'.
	
	title position: 240 @ 10.
	
	leaderboardBackground addMorph: title