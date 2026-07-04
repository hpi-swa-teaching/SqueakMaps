game flow
advanceMultiplayerRound

	currentPlayer ifFalse: [
		currentPlayer := true.
		state := #playing.
		^ self].

	levelManager hasMoreLevels ifFalse: [
		state := #ended.
		^ self].

	currentLevel := levelManager nextLevel.
	currentPlayer := false.
	state := #playing