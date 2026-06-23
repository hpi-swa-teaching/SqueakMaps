running
testRenameCategory

	| testCategory menu item |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	self model changed: #items.
	self model isSelected: 2 put: true.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
	item := menu items detect: [:m | m contents = 'Rename'].
	
	[ item target perform: item selector withArguments: item arguments.] 
	valueSupplyingAnswers: { { 'New Name' . 'Renamed Category' } }.
	
	menu delete.
		
	self assert: (self model class savedCategories anySatisfy: [:each | each title = 'Renamed Category']).
	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])