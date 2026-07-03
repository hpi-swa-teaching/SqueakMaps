as yet unclassified
nextVisibleLevel

	self availableLevels isEmpty ifTrue: [^ self visibleLevel].
	^ self availableLevels
		detect: [:level | level > self visibleLevel]
		ifNone: [self visibleLevel]