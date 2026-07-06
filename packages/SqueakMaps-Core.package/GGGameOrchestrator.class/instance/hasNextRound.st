testing
hasNextRound

	(self isMultiplayer and: [self currentPlayerIndex = 0]) ifTrue: [^ true].
	^ self levelManager hasMoreLevels
