category management
removeCategoryOptions: aRemovedCategory

	| optionIndex |
	optionIndex  := UIManager default
		chooseFrom: #('Delete all Pins within this category.'  'Uncategorize all Pins within this category.')
		title: 'What happens to the pins?'.
	
		"pressed cancel"
		optionIndex = 0 ifTrue: [^ self].
		
		(UIManager default confirm: 'Are you sure?')
			ifTrue: [
				optionIndex = 1 ifTrue: [
					 self deleteAllPinsIn: aRemovedCategory.
				].
				
				optionIndex = 2 ifTrue: [
					self uncategorizePins: aRemovedCategory
				].
			self class removePinCategory: aRemovedCategory.
			]