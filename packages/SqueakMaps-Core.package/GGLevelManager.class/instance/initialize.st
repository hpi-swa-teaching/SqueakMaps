initialization
initialize

	| shuffled |

	super initialize.
	shuffled := self class defaultLevels shuffled asOrderedCollection.
	self remainingLevels: (shuffled first: (self roundsPerGame min: shuffled size)).
	self totalLevelCount: self remainingLevels size
