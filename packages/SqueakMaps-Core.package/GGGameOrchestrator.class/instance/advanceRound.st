game flow
advanceRound

	self isEvaluating ifFalse: [^ self].
	levelManager hasMoreLevels
		ifTrue: [
			currentLevel := levelManager nextLevel.
			state := #playing]
		ifFalse: [state := #ended]
