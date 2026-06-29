category management
toggleAllPinsForCategoryAt: anIndex
	
	| selectedCategory |	
	selectedCategory := self class savedCategories detect: [:cat | cat title = (self items at: anIndex)].
	
	1 to: ((self selectPinsForCategory: selectedCategory) size) do: [:i |
		self isSelected: anIndex + i put: (self isSelected: anIndex)]