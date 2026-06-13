initialization
initialize

	super initialize.
	remainingLevels := self class defaultLevels shuffled asOrderedCollection.
	totalLevelCount := remainingLevels size
