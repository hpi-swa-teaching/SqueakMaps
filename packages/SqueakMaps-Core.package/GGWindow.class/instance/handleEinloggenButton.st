game flow
handleEinloggenButton

	self gameOrchestrator isPlaying ifTrue: [
		self currentGuess isPresent ifFalse: [^ self].
		self gameOrchestrator submitGuess: self currentGuess coordinates.
		^ self refreshForState].
	
	gameOrchestrator isEvaluating ifFalse: [^ self].
	gameOrchestrator advanceRound.
	self refreshForState
