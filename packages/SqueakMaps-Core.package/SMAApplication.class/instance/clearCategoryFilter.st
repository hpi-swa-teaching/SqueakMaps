building
clearCategoryFilter

	self tiledMapMorph categoryFilter: self directoryModel clearFilter.
	self changed: #searchTreeRoots