game flow
advanceMultiplayerRound

	currentPlayerIndex = 0 ifTrue: [
		currentPlayerIndex := 1.
		state := #playing.
		^ self].

	levelManager hasMoreLevels ifFalse: [
		state := #ended.
		^ self].

	self advanceToNextLevel