category management
removeCategory

	| categories selectedCategoryIndex|
	categories := self class savedCategories reject: [:each | each isDefault].
	categories isEmpty ifTrue: [^ self inform: 'No category to remove.'].
	selectedCategoryIndex  := UIManager default
		chooseFrom: (categories collect: [:p | p title])
		title: 'Select category to remove.'.
		
	"pressed cancel"
	selectedCategoryIndex = 0 ifTrue: [ ^ self ].
	self removeCategoryOptions: (categories at: selectedCategoryIndex).
	self class removePinCategory: (categories at: selectedCategoryIndex).
	
	
	self changed: #items.