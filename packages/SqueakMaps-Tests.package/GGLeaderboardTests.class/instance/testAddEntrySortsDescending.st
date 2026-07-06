testing
testAddEntrySortsDescending

	leaderboard addEntry: (self entryNamed: 'low' score: 10).
	leaderboard addEntry: (self entryNamed: 'high' score: 100).
	leaderboard addEntry: (self entryNamed: 'mid' score: 50).

	self assert: (leaderboard entries collect: [:entry | entry score]) asArray
		equals: #(100 50 10)
