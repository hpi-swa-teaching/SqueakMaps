category management
changePinCategory: aPin
	| categories selectedCategory titleCollection|
	
	categories := self class savedCategories.
	titleCollection := categories collect: [:p | p title].

	selectedCategory  := UIManager default
		chooseFrom: titleCollection
		title: 'Select category'.

	"pressed cancel"
	selectedCategory = 0 ifTrue: [^ self ].

	aPin category: (categories at: selectedCategory).
	self changed: #buildSearchPinPanelChildren.
	self changed: #items.