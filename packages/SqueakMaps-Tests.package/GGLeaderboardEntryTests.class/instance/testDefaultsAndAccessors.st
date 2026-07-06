testing
testDefaultsAndAccessors

	| entry |
	entry := GGLeaderboardEntry new.
	self assert: entry playerName equals: ''.
	self assert: entry score equals: 0.

	entry playerName: 'Ada'.
	entry score: 1234.
	self assert: entry playerName equals: 'Ada'.
	self assert: entry score equals: 1234
