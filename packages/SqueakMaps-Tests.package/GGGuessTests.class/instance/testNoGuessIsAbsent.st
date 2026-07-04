testing
testNoGuessIsAbsent

	| guess |
	guess := GGNoGuess new.

	self deny: guess isPresent.
	self assert: guess coordinates isNil
