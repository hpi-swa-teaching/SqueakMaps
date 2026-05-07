pin management
savePin
	| categories selectedCategory titleCollection|
	
	categories := self class savedCategories.
	
	titleCollection := categories collect: [:p |
					p title
		].

	selectedCategory  := UIManager default
		chooseFrom: titleCollection
		title: 'Select category'.

	"pressed cancel"
	selectedCategory = 0 ifTrue: [ ^ self ].

	self selectedPin
		category: (categories at: selectedCategory).
	
	self isSelectedPinSaved ifFalse: [
		self class savedPins addIfNotPresent: self selectedPin
	].

	self changed: #buildSearchPinPanelChildren