testing
hasNextRound
	"Whether another round follows the current guess (asked while evaluating). In multiplayer the
	second player still plays the same final level, so a pending handover counts as a next round.
	Mirrors advanceRound so the UI's 'Next round' / 'End game' label stays in sync with the flow."

	(self isMultiplayer and: [currentPlayerIndex = 0]) ifTrue: [^ true].
	^ self levelManager hasMoreLevels
