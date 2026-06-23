category testing
testRemoveCategoryUncategorizeAllPins
	
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
	
	self model changed: #items.
	
	"Select category and deselect pin"
	self model isSelected: 2 put: true.
	self model isSelected: 3 put: false.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
	
	item := menu items detect: [:m | m contents = 'Remove'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {{'What happens to the pins?'. 'Uncategorize all Pins within this category.'}.{'Are you sure?'. true} }.

	menu delete.

	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category']).
	self assert: (pin1 category title = 'Uncategorized')
	
	