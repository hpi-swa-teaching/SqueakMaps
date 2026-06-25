game flow
advanceRound

	self isEvaluating ifFalse: [^ self].
	(self isMultiplayer and: [self currentPlayer = false]) ifTrue: [
		"Player 0 just guessed; player 1 now guesses the SAME location."
		currentPlayer := true.
		state := #playing.
		^ self].
	"Singleplayer, or both players finished this location: advance to the next round."
	levelManager hasMoreLevels
		ifTrue: [
			currentLevel := levelManager nextLevel.
			self isMultiplayer ifTrue: [currentPlayer := false].
			state := #playing]
		ifFalse: [state := #ended]
