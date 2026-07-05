pin management
categorizeSelectedPin

	| categories selectedCategory titleCollection|	
	categories := self class savedCategories.
	titleCollection := categories collect: [:p | p title].
	selectedCategory := self requestCategoryFrom: titleCollection.
	selectedCategory ifNil: [^nil].
	self selectedPin category: (categories at: selectedCategory).