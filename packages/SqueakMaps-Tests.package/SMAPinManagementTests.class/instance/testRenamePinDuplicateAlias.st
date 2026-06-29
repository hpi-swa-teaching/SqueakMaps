pin testing
testRenamePinDuplicateAlias

	| location1 location2 menu item|

	location1 := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: (self model class savedCategories at: 1);
		yourself.
	location2 := SMALocation new 
		coordinates: (SMAGeoCoordinate newFrom:  13.404954 @ 52.520008);
		label: 'Berlin';
		category: (self model class savedCategories at: 1);
		yourself.
		
	SMAApplication savedPins add: location1.
	SMAApplication savedPins add: location2.

	self model isSelected: 2 put: true.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
	
	item := menu items detect: [:m | m contents = 'Rename Pin'].

	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {{ 'New Name' . 'Berlin'}. { 'Can not rename to an existing alias.' . #closeDialog}}.
	
	self assert: (self model class savedPins anySatisfy: [:pin | pin label = 'Munich']).
	self assert: (self model class savedPins noneSatisfy: [:pin | pin label = '']).
