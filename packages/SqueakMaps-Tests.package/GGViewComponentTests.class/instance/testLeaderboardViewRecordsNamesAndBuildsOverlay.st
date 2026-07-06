testing - leaderboard
testLeaderboardViewRecordsNamesAndBuildsOverlay

	| view board entry orchestrator name |
	board := GGLeaderboard new.
	view := GGLeaderboardView new leaderboard: board; yourself.
	self assert: view maxNameLength equals: 10.

	name := [view promptPlayerNameFor: 'Player 0']
		valueSupplyingAnswers: {{'Player 0 - Name eingeben (optional):'. 'abcdefghijklmnop'}}.
	self assert: name equals: 'abcdefghij'.

	[view addScore: 123 for: 'Player 0']
		valueSupplyingAnswers: {{'Player 0 - Name eingeben (optional):'. 'Ada'}}.
	self assert: board entries size equals: 1.
	entry := board entries first.
	self assert: entry playerName equals: 'Ada'.
	self assert: entry score equals: 123.

	view showIn: window.
	self assert: (window submorphs includes: view).
	self assert: view submorphs isEmpty not.
	view close.
	self deny: (window submorphs includes: view).

	orchestrator := GGGameOrchestrator new.
	orchestrator players first score: 50.
	[view recordFrom: orchestrator]
		valueSupplyingAnswers: {{'Name eingeben (optional):'. 'Solo'}}.
	self assert: (board entries anySatisfy: [:each | each playerName = 'Solo'])
