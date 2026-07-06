testing - models
testLevelSelectionSortsLevelsAndNavigates

	| model |
	model := SMALevelSelectionModel new.
	model availableLevels: #(2 0 1 1).
	self assert: model availableLevels asArray equals: #(0 1 2).
	self assert: model visibleLevel equals: 0.
	model selectNextLevel.
	self assert: model visibleLevel equals: 1.
	model selectPreviousLevel.
	self assert: model visibleLevel equals: 0.
	model visibleLevel: 2.
	self assert: model previousVisibleLevel equals: 1.
	self assert: model nextVisibleLevel equals: 2
