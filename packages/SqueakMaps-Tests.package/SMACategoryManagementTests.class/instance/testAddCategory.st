category testing
testAddCategory

	|menu item|

	self categoryOptionsButton click.
	menu := ActiveWorld submorphs
		detect: [:m | m isKindOf: MenuMorph]
		ifNone: [self fail: 'Menu did not open'].
		
	item := menu items
		detect: [:elem | elem contents = 'Add Category'] 
		ifNone: [self fail: 'Menu Item not found'].
		
	[ item target perform: item selector withArguments: item arguments.]
		valueSupplyingAnswers: { { 'Category Title' . 'Test Category' } }.
		
	self assert: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])