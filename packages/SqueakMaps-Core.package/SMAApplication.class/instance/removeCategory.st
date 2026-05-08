pin management
removeCategory

	| categories selectedCategoryIndex titleCollection|
	categories := self class savedCategories.
	titleCollection := categories collect: [:p | p title].

	selectedCategoryIndex  := UIManager default
		chooseFrom: titleCollection
		title: 'Select category To Remove'.
		
	"pressed cancel"
	selectedCategoryIndex = 0 ifTrue: [ ^ self ].
	"Remove category"
	self class removePinCategoryTitle: (titleCollection at: selectedCategoryIndex).
	self changed: #items.