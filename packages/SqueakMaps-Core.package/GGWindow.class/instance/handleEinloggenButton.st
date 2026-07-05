game flow
handleEinloggenButton

	gameOrchestrator isPlaying ifTrue: [
		self currentGuess isPresent ifFalse: [^ self].
		gameOrchestrator submitGuess: self currentGuess coordinates.
		^ self refreshForState].
	
	gameOrchestrator isEvaluating ifFalse: [^ self].
	gameOrchestrator advanceRound.
	self refreshForState
