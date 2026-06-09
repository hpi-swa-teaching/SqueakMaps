category testing
testRemoveCategoryDeleteAllPins
	
	| testCategory pin1 menu item|
	
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
	
	self categoryOptionsButton click. 
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'Remove Category'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: { { 'Select category to remove.' . 'Test Category' }.{'What happens to the pins?'. 'Delete all Pins within this category.'}.{'Are you sure?'. true} }.
	
	menu delete.
	
	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category']).
	self deny: (self model class savedPins anySatisfy: [:each | each = pin1])
	
	