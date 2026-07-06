building
toggleCategoryFilterFor: aNode

	| pois |
	pois := self directoryModel toggleFilterFor: aNode.
	self tiledMapMorph categoryFilter: pois.
	self changed: #searchTreeRoots