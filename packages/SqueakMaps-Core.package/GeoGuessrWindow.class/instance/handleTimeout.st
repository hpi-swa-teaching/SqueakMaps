game flow
handleTimeout

	gameOrchestrator isPlaying ifFalse: [^ self].
	gameOrchestrator submitGuess: self currentGuess.
	self refreshForState
