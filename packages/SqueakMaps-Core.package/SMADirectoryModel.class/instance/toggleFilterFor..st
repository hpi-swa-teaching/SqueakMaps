accessing
toggleFilterFor: aNode

	| pois |
	(self activeCategoryFilterLabel = aNode label)
		ifTrue: [^ self clearFilter].
	pois := self poisToFilterFor: aNode.
	pois isEmpty ifTrue: [^ self clearFilter].
	self activeCategoryFilterLabel: aNode label.
	^ pois
