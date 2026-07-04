testing
testNewPlayerHasLabelAndZeroScore

	| player |
	player := GGPlayer label: 'Player 0'.

	self assert: player label equals: 'Player 0'.
	self assert: player score equals: 0
