initialization
initialize

	| shuffled |

	super initialize.
	shuffled := self class defaultLevels shuffled asOrderedCollection.
	remainingLevels := shuffled first: (self roundsPerGame min: shuffled size).
	totalLevelCount := remainingLevels size
