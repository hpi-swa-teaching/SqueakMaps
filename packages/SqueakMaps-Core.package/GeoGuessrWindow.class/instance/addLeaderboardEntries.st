leaderboard
addLeaderboardEntries

	| y spacing |
	y := leaderboardBackground height * 1.8.
	spacing := leaderboardBackground height * 1.3.
	
	leaderboard entries doWithIndex: [:entry :index | | text |
		text := StringMorph contents: index asString, '. ', entry playerName, ' - ', entry score asString.
		
		text position: leaderboardBackground width * 0.4 @ y.
		
		leaderboardBackground addMorph: text.
		
		y := y + spacing]