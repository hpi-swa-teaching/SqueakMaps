game flow
advanceRound

	self isEvaluating ifFalse: [^ self].
	levelManager hasMoreLevels
		ifTrue: [
			currentLevel := levelManager nextLevel.
			state := #playing.
			isMultiplayer ifTrue:[currentPlayer := currentPlayer not]]
		ifFalse: [state := #ended]
