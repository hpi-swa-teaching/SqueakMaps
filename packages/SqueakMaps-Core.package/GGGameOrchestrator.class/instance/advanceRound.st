game flow
advanceRound

	self isEvaluating ifFalse: [^ self].
	levelManager hasMoreLevels
		ifTrue: [
			self currentPlayer ifTrue:[currentLevel := levelManager nextLevel.].
			state := #playing.
			isMultiplayer ifTrue:[currentPlayer := currentPlayer not]]
		ifFalse: [state := #ended]
