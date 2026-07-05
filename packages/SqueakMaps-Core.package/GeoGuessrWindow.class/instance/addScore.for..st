leaderboard
addScore: aScore for: aLabel
	"Offer a leaderboard entry for aScore, prompting for a name (optional) under the given player
	label (nil in single-player). Skips silently if the player declines to enter a name."

	| name |
	name := self promptPlayerNameFor: aLabel.
	name ifNil: [^ self].
	leaderboard addEntry: (LeaderboardEntry new
		playerName: name;
		score: aScore;
		yourself)
