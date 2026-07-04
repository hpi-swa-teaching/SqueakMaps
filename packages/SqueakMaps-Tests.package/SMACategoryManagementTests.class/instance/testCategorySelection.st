category testing
testCategorySelection
	
	| testCategory pin1 pin2|
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	pin1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: (self model class savedCategories at: 1);
		yourself.
		
	pin2 := SMALocation new 
		coordinates: (SMAGeoCoordinate newFrom:  13.404954 @ 52.520008);
		label: 'Berlin';
		category: testCategory
		yourself.
	self model class savedPins add: pin1.
	self model class savedPins add: pin2.
	
	"Test only uncategorized"
	self model isSelected: 1 put: true.
	self assert: self model tiledMapMorph markers size = 1.
	self assert: self model visiblePins size = 1.
	
	"Both categories"
	self model isSelected: 3 put: true.
	self assert: self model tiledMapMorph markers size = 2.
	self assert: self model visiblePins size = 2.
	
	"Deselect uncategorized"
	self model isSelected: 1 put: false.
	self assert: self model tiledMapMorph markers size = 1.
	self assert: self model visiblePins size = 1.