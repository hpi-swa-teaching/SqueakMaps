category testing
testAddCategory

	[self addCategoryButton click] valueSupplyingAnswers: { { 'Category Title' . 'Test Category' } }.
	self assert: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])