category testing
testNoCategoryRemoved
	
	|menu item|
	
	self categoryOptionsButton click. 
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'Remove Category'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {{ 'No category to remove.' . #closeDialog }}.

	menu delete.
	self assert: self model class savedCategories size equals: 1