recording
addScore: aScore for: aLabel
	
	| name |
	name := self promptPlayerNameFor: aLabel.
	name ifNil: [^ self].
	self leaderboard addEntry: (GGLeaderboardEntry new
		playerName: name;
		score: aScore;
		yourself)