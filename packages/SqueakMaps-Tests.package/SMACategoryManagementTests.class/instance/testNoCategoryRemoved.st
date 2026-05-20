category testing
testNoCategoryRemoved
	
	[self removeCategoryButton click] valueSupplyingAnswers: {{ 'No category to remove.' . #closeDialog }}.
	self assert: self model class savedCategories size equals: 1