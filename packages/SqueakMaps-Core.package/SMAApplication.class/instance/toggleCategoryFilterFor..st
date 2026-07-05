building
toggleCategoryFilterFor: aNode

	| pois |
	(self activeCategoryFilterLabel = aNode label)
		ifTrue: [^ self clearCategoryFilter].
	pois := (self leafTargetsUnder: aNode)
		select: [:each | each isKindOf: SMAPOI].
	pois isEmpty ifTrue: [^ self clearCategoryFilter].
	self activeCategoryFilterLabel: aNode label.
	self tiledMapMorph categoryFilter: pois.
	self changed: #searchTreeRoots