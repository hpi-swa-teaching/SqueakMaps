testing
isActiveCategoryNode: aNode

	^ aNode target isNil
		and: [self activeCategoryFilterLabel = aNode label]
