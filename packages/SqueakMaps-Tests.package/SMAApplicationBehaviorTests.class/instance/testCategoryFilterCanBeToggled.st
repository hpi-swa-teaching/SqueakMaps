testing - filters
testCategoryFilterCanBeToggled

	| group |
	group := application poiTreeGroups detect: [:each | each hasChildren].
	application toggleCategoryFilterFor: group.
	self assert: application activeCategoryFilterLabel equals: group label.
	self assert: application tiledMapMorph categoryFilter notNil.
	application toggleCategoryFilterFor: group.
	self assert: application activeCategoryFilterLabel isNil.
	self assert: application tiledMapMorph categoryFilter isNil
