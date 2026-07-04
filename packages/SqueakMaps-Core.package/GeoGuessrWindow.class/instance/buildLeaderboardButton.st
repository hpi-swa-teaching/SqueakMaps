building
buildLeaderboardButton

	self leaderboardButton: (PluggableButtonMorph new
		label: 'Leaderboard' font: self geoGuessrButtonFont;
		target: [self showLeaderboard];
		actionSelector: #value;
		yourself)
