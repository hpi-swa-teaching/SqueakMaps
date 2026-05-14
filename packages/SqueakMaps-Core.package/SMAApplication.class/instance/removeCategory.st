category management
removeCategory

	| categories selectedCategoryIndex titleCollection|
	categories := self class savedCategories reject: [:each | each isDefault].
	titleCollection := categories collect: [:p | p title].
	
	selectedCategoryIndex  := UIManager default
		chooseFrom: (categories collect: [:p | p title])
		title: 'Select category To Remove'.
		
	"pressed cancel"
	selectedCategoryIndex = 0 ifTrue: [ ^ self ].
	self class removePinCategoryTitle: (titleCollection at: selectedCategoryIndex).
	self changed: #items.