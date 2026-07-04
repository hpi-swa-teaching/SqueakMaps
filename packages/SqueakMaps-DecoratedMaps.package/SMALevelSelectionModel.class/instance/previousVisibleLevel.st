navigation
previousVisibleLevel

	self availableLevels isEmpty ifTrue: [^ self visibleLevel].
	^ self availableLevels reversed
		detect: [:level | level < self visibleLevel]
		ifNone: [self visibleLevel]
