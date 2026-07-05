category management
requestCategoryFrom: aCategorySelection
	
	| selectedCategory |
	selectedCategory  := UIManager default
		chooseFrom: aCategorySelection
		title: 'Select category'.

	selectedCategory = 0 ifTrue: [^ nil ].
	^ selectedCategory
