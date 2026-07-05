building
labelOfTreeNode: aNode

	(self isActiveCategoryNode: aNode)
		ifTrue: [^ '» ', aNode label].
	^ aNode label