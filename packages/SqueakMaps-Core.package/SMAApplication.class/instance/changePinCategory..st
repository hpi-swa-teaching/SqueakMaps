category management
changePinCategory: aPin

	| selectedCategory titleCollection|	
	titleCollection := self class savedCategories collect: [:p | p title].

	selectedCategory  := UIManager default chooseFrom: titleCollection title: 'Select category'.
	selectedCategory = 0 ifTrue: [^ self ].

	aPin category: (self class savedCategories at: selectedCategory).
	self changed: #buildSearchPinPanelChildren.
	self changed: #items.