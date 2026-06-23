category testing
testAddCategory

	|menu item|

	self model isSelected: 1 put: true.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
		
		
	item := menu items detect: [:m | m contents = 'Add new category'].
		
	[ item target perform: item selector withArguments: item arguments.]
		valueSupplyingAnswers: { { 'Category Title' . 'Test Category' } }.
		
	menu delete.
		
	self assert: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])