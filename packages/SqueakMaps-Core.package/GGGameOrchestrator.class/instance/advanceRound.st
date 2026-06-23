game flow
advanceRound

	self isEvaluating ifFalse: [^ self].
	levelManager hasMoreLevels
		ifTrue: [
			currentLevel := levelManager nextLevel.
			state := #playing.
			currentPlayer 
				ifFalse: [currentPlayer := true]
				ifTrue: [currentPlayer := false]]
		ifFalse: [state := #ended]
