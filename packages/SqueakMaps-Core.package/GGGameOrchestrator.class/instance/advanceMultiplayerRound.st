game flow
advanceMultiplayerRound

	currentPlayer ifFalse: [
		currentPlayer := true.
		state := #playing.
		^ self].

	levelManager hasMoreLevels ifFalse: [
		state := #ended.
		^ self].

	self advanceToNextLevel