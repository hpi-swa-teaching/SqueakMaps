pin management
savePin: aPin
	| categories selectedCategory titleCollection|
	
	categories := self class savedCategories.
	titleCollection := categories collect: [:p | p title].

	selectedCategory  := UIManager default
		chooseFrom: titleCollection
		title: 'Select category'.

	"pressed cancel"
	selectedCategory = 0 ifTrue: [^ self ].

	aPin category: (categories at: selectedCategory).
	
	(self class savedPins anySatisfy: [:p | p alias = aPin alias]) ifTrue: [
		^ self inform: 'No duplicate names allowed.'
		].
	
	(self class savedPins anySatisfy: [:p | p coordinates = aPin coordinates]) ifFalse: [
		self class savedPins addIfNotPresent: aPin
	].

	self changed: #buildSearchPinPanelChildren.
	self changed: #items.