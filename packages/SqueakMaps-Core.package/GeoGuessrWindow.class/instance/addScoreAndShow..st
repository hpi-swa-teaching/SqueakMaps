leaderboard
addScoreAndShow: aScore
	"Add the score (optional name) and then reveal the leaderboard."

	self addScore: aScore.
	self showLeaderboard
