building
buildLeaderboardButton

	self leaderboardButton: (PluggableButtonMorph new
		label: 'Leaderboard';
		target: [self showLeaderboard];
		actionSelector: #value;
		yourself)
