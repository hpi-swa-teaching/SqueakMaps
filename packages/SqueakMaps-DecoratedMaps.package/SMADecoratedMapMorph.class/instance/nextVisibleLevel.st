accessing
nextVisibleLevel

	| levels |
	levels := self availableLevels.
	levels isEmpty ifTrue: [^ self visibleLevel].

	^ levels
		detect: [:level | level > self visibleLevel]
		ifNone: [self visibleLevel]