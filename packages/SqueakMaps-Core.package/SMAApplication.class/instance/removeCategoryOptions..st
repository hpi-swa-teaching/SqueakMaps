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
				
				"delete all pins"
				optionIndex = 1 ifTrue: [
					self class savedPins do:[:pin |
						pin category = aRemovedCategory ifTrue:[
								self removePin: pin
							]
						]
					].
				
				"Give pins new category"
				optionIndex = 2 ifTrue: [
					self uncategorizePins: aRemovedCategory
					].
			]