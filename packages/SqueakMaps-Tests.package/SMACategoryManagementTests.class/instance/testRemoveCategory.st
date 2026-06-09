category testing
testRemoveCategory
	
	| testCategory menu item |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	self categoryOptionsButton click. 
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	
	item := menu items detect: [:m | m contents = 'Remove Category'].
	
	[ item target perform: item selector withArguments: item arguments.]
		valueSupplyingAnswers: { { 'Select category to remove.' . 'Test Category' } }.
		
		menu delete.

	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])
	
	