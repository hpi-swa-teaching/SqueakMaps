testing
testPlacedGuessIsPresent

	| guess |
	guess := GGGuess coordinates: 13 @ 52.

	self assert: guess isPresent.
	self assert: guess coordinates equals: 13 @ 52
