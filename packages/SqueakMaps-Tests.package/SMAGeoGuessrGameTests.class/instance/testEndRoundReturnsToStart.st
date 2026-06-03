testing
testEndRoundReturnsToStart

	self model startGame.
	self model endRound.
	self assert: #start equals: self model currentScreen.
	self deny: self model roundActive
