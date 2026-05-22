category testing
testRemoveCategoryUncategorizeAllPins
	
	| testCategory pin1 |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	pin1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: testCategory;
		yourself.
	self model class savedPins add: pin1.
	[self removeCategoryButton click] valueSupplyingAnswers: { { 'Select category to remove.' . 'Test Category' }.{'What happens to the pins?'. 'Uncategorize all Pins within this category.'}.{'Are you sure?'. true} }.

	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category']).
	self assert: (pin1 category title = 'Uncategorized')
	
	