leaderboard
offerLeaderboardEntryFor: aScore prompt: aPromptText
	"Only top-5-worthy scores are offered an entry; the player may still skip."

	(leaderboard isHighscore: aScore) ifFalse: [^ self].
	self askForNameAndAddScore: aScore prompt: aPromptText
