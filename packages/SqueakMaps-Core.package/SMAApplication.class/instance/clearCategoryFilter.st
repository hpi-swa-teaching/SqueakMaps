building
clearCategoryFilter

	self activeCategoryFilterLabel: nil.
	self tiledMapMorph categoryFilter: nil.
	self changed: #searchTreeRoots