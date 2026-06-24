leaderboard
addLeaderboardEntries

	| y |
	y := 80.
	leaderboard entries doWithIndex: [:entry :index | | text |
		text := StringMorph contents: index asString, '. ', entry playerName, ' - ', entry score asString.
		text position: 20 @ y.
		leaderboardBackground addMorph: text.
		y := y + 45]