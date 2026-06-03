testing
testNoGuessBeforeRound

	self deny: self window roundActive.
	self window placeGuessAt: 0.5 @ 0.5.
	self assert: self window currentGuess isNil.
	self assert: self window tiledMapMorph markers isEmpty
