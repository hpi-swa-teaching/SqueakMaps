game flow
advanceSingleplayerRound

	levelManager hasMoreLevels ifFalse: [
		state := #ended.
		^ self].

	currentLevel := levelManager nextLevel.
	state := #playing