game flow
handleTimeout

	self gameOrchestrator isPlaying ifFalse: [^ self].
	self gameOrchestrator submitGuess: self currentGuess coordinates.
	self refreshForState
