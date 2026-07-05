leaderboard
addLeaderboardTitle

	| title |
	title := StringMorph contents: 'Leaderboard'.
	
	title position: leaderboardBackground width * 5.5 @ (leaderboardBackground height * 0.2).
	
	leaderboardBackground addMorph: title