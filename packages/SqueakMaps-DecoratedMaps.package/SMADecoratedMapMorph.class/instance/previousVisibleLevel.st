accessing
previousVisibleLevel

	| levels |
	levels := self availableLevels.
	levels isEmpty ifTrue: [^ self visibleLevel].

	^ levels reversed
		detect: [:level | level < self visibleLevel]
		ifNone: [self visibleLevel]