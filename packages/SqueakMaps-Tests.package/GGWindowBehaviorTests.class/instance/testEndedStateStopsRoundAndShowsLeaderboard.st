testing
testEndedStateStopsRoundAndShowsLeaderboard

	1 to: GGLeaderboard current capacity do: [:index |
		GGLeaderboard current addEntry:
			(GGLeaderboardEntry new
				playerName: index asString;
				score: 10000 + index;
				yourself)].
	window initializeWindowOnClick.
	window handleStartButton.
	window gameOrchestrator state: #ended.
	window showEndedState.
	self deny: window roundActive.
	self assert: (window infoMorph contents asString includesSubstring: 'Game ended').
	self assert: (window infoMorph2 contents asString includesSubstring: 'Total score:').
	self assert: window leaderboardView notNil.
	window leaderboardView close
