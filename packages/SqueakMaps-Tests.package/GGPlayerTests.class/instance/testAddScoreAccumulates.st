testing
testAddScoreAccumulates

	| player |
	player := GGPlayer label: 'Player 0'.
	player addScore: 100.
	player addScore: 50.

	self assert: player score equals: 150
