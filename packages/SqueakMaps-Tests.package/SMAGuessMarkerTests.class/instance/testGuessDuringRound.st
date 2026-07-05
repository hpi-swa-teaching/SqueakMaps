testing
testGuessDuringRound

	self window startTimer.
	self window viewSwapper toggle.
	self window placeGuessAt: 0.5 @ 0.5.
	self assert: self window currentGuess isPresent.
	self assert: self window tiledMapMorph markers size equals: 1
