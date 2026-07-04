game flow
startGame
	"Start (or restart) a game. Ending a game and choosing 'Next game' restarts on an ended
	orchestrator, so reset clears the multiplayer flag - remember and restore it so the next game
	keeps the same mode. (Returning to the home screen resets separately and re-picks the mode.)"

	| wasMultiplayer |

	(self isStart or: [self isEnded]) ifFalse: [^ self].
	wasMultiplayer := isMultiplayer.
	self isEnded ifTrue: [self reset].
	isMultiplayer := wasMultiplayer.
	currentLevel := levelManager nextLevel.
	currentPlayer := false.
	state := #playing
