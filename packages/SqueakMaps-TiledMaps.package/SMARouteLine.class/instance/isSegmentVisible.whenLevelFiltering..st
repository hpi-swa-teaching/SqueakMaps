level-selection
isSegmentVisible: aCollectionOfLevels whenLevelFiltering: shouldFilterByLevel

	shouldFilterByLevel ifFalse: [^ true].
	aCollectionOfLevels isEmpty ifTrue: [^ true].
	levelSelectionModel ifNil: [^ true].
	^ aCollectionOfLevels includes: levelSelectionModel visibleLevel