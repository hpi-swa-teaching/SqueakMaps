as yet unclassified
testLevelSelectionModelOwnsFloorNavigation

	| model |
	model := SMALevelSelectionModel new.
	model availableLevels: #(0 1 2).
	model selectNextLevel.
	self assert: model visibleLevel equals: 1.
	model selectPreviousLevel.
	self assert: model visibleLevel equals: 0