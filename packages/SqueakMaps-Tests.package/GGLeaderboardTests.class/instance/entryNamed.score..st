private
entryNamed: aName score: aScore

	^ GGLeaderboardEntry new
		playerName: aName;
		score: aScore;
		yourself
