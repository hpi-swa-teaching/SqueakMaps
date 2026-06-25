accessing
currentRoundNumber
	"The 1-based index of the location currently in play. Mode-independent and
	identical for both players guessing the same location in multiplayer."

	^ levelManager totalCount - levelManager remainingCount
