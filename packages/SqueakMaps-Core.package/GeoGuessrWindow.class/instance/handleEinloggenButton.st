game flow
handleEinloggenButton

	gameOrchestrator isPlaying ifTrue: [
		self currentGuess ifNil: [^ self].
		gameOrchestrator submitGuess: self currentGuess.
		^ self refreshForState].
	gameOrchestrator isEvaluating ifTrue: [
		gameOrchestrator advanceRound.
		self refreshForState]
