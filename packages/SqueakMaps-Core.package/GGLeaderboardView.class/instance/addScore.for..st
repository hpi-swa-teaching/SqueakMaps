recording
addScore: aScore for: aLabel
	
	| name |
	name := self promptPlayerNameFor: aLabel.
	name ifNil: [^ self].
	leaderboard addEntry: (LeaderboardEntry new
		playerName: name;
		score: aScore;
		yourself)