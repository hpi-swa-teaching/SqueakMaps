category testing
testRenameCategory

	| testCategory |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	[[self renameCategoryButton click] valueSupplyingAnswers: { { 'Select category to rename.' . 'Test Category' } }]
		valueSupplyingAnswers: { { 'New Name' . 'Renamed Category' } }.
	self assert: (self model class savedCategories anySatisfy: [:each | each title = 'Renamed Category']).
	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])