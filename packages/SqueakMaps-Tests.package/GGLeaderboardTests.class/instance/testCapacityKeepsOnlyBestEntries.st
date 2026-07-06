testing
testCapacityKeepsOnlyBestEntries

	#(10 20 30 40 50 60) doWithIndex: [:score :index |
		leaderboard addEntry: (self entryNamed: index asString score: score)].

	self assert: leaderboard entries size equals: leaderboard capacity.
	self assert: (leaderboard entries collect: [:entry | entry score]) asArray
		equals: #(60 50 40 30 20)
