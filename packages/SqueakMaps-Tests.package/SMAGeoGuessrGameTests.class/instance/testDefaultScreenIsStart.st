testing
testDefaultScreenIsStart

	self assert: #start equals: self model currentScreen.
	self deny: self model roundActive
