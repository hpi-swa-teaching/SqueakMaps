pin testing
testChangePinCategory

	| location1 testCategory menu item|

	location1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: (self model class savedCategories at: 1);
		yourself.
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
		
	SMAApplication savedPins add: location1.

	self model isSelected: 2 put: true.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
	
	item := menu items detect: [:m | m contents = self model changePinCategoryMenuLabel].

	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {{ 'Select category' . 'Test Category'}}.
	
	self assert: location1 category title = 'Test Category'.
