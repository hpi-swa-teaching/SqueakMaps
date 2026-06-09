running
testRenameCategory

	| testCategory menu item |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	self categoryOptionsButton click. 
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'Rename Category'].
	
	[[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: { { 'Select category to rename.' . 'Test Category' } }]
		valueSupplyingAnswers: { { 'New Name' . 'Renamed Category' } }.
	
	menu delete.
		
	self assert: (self model class savedCategories anySatisfy: [:each | each title = 'Renamed Category']).
	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])