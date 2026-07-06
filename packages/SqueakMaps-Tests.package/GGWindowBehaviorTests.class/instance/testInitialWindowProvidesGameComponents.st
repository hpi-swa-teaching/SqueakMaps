testing
testInitialWindowProvidesGameComponents

	self assert: window tiledMapMorph notNil.
	self assert: window timerMorph notNil.
	self assert: window pictureMorph notNil.
	self assert: window gameOrchestrator isStart.
	self assert: window mapConfigurator notNil.
	self assert: window viewSwapper notNil.
	self assert: window controlBar notNil.
	self deny: window roundActive.
	self deny: window currentGuess isPresent
