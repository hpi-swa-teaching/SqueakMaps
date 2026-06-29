category management
toggleAllPinsForCategoryAt: anIndex

	| selectedCategoryTitle selectedCategory |
	selectedCategoryTitle := self items at: anIndex.
	
	selectedCategory := self class savedCategories detect: [:cat | cat title = selectedCategoryTitle].
	
	1 to: ((self selectPinsForCategory: selectedCategory) size) do: [:i |
		self isSelected: anIndex + i put: (self isSelected: anIndex)
		]
	