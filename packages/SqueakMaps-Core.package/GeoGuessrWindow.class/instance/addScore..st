leaderboard
addScore: aScore
	"Add a leaderboard entry for the score. Skips silently if the player declines to enter a name."

	| name |

	name := self promptPlayerName.
	name ifNil: [^ self].
	leaderboard addEntry: (LeaderboardEntry new
		playerName: name;
		score: aScore;
		yourself)
