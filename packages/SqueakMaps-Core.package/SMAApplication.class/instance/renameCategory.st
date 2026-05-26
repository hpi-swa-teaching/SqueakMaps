category management
renameCategory

	| categories selectedCategoryIndex|
	categories := self class savedCategories reject: [:each | each isDefault].
	categories isEmpty ifTrue: [^ self inform: 'No category to rename.'].
	selectedCategoryIndex  := UIManager default
		chooseFrom: (categories collect: [:p | p title])
		title: 'Select category to rename.'.
		
	"pressed cancel"
	selectedCategoryIndex = 0 ifTrue: [ ^ self ].
	self class renamePinCategory: (categories at: selectedCategoryIndex).
	
	self changed: #items.