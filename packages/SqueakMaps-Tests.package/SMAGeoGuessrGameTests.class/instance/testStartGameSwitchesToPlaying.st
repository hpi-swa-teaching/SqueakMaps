testing
testStartGameSwitchesToPlaying

	self model startGame.
	self assert: #playing equals: self model currentScreen.
	self assert: self model roundActive
