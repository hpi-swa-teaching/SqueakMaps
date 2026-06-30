game flow
advanceRound
	"Advance after a guess. In multiplayer both players play the same level before it moves on,
	so the game only ends once the second player has finished the final level."

	self isEvaluating ifFalse: [^ self].
	(isMultiplayer and: [self currentPlayer not]) ifTrue: [
		currentPlayer := true.
		^ state := #playing].
	levelManager hasMoreLevels ifFalse: [^ state := #ended].
	currentLevel := levelManager nextLevel.
	currentPlayer := false.
	state := #playing
