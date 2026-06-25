testing
isLastTurn
	"True when advancing from the current evaluating round ends the game.
	In multiplayer the game only ends after player 1's final guess."

	^ levelManager hasMoreLevels not
		and: [self isMultiplayer not or: [self currentPlayer]]
