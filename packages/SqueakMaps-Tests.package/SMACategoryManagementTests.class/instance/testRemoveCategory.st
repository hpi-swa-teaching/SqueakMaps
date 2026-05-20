category testing
testRemoveCategory
	
	| testCategory |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	[self removeCategoryButton click] valueSupplyingAnswers: { { 'Select category to remove.' . 'Test Category' } }.

	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])
	
	