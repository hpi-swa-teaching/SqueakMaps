game flow
handleEinloggenButton

	gameOrchestrator isPlaying ifTrue: [
		self currentGuess isPresent ifFalse: [^ self].
		gameOrchestrator submitGuess: self currentGuess coordinates.
		^ self refreshForState].
	gameOrchestrator isEvaluating ifTrue: [
		gameOrchestrator advanceRound.
		self refreshForState]
