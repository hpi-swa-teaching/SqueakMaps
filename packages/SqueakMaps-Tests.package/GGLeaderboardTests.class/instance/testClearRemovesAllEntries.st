testing
testClearRemovesAllEntries

	leaderboard addEntry: (self entryNamed: 'Ada' score: 100).
	leaderboard clear.
	self assert: leaderboard entries isEmpty
