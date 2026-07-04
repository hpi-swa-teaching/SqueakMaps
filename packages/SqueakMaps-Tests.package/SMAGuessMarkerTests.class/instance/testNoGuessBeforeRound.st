testing
testNoGuessBeforeRound

	self deny: self window roundActive.
	self window placeGuessAt: 0.5 @ 0.5.
	self deny: self window currentGuess isPresent.
	self assert: self window tiledMapMorph markers isEmpty
