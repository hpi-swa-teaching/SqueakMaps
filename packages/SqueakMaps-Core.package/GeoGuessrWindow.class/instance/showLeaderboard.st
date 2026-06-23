leaderboard
showLeaderboard

	leaderboardBackground := Morph new.
	leaderboardBackground color: Color red.
	self addMorph: leaderboardBackground frame: (0.3 @ 0.3 extent: 0.3 @ 0.3).
	y := 20.
	leaderboard entries doWithIndex: [:entry :index | | text |
		text := StringMorph contents: index asString, '. ', entry playerName, ' - ', entry score asString.
		text position: 20 @ y.
		leaderboardBackground addMorph: text.
		leaderboardBackground addMorph: closeButton.
		closeButton position: leaderboardBackground width +410 @ (leaderboardBackground height + 265).
		y := y + 40]