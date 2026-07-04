pin testing
testRenamePin

	| location menu item |	
	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: (self model class savedCategories at: 1);
		yourself.
	
	SMAApplication savedPins add: location.

	self model isSelected: 2 put: true.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
	
	item := menu items detect: [:m | m contents = self model renamePinMenuLabel].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {{ 'New Name' . 'Test Name'}}.
	
	menu delete.
	self assert: (self model class savedPins anySatisfy: [:pin | pin alias = 'Test Name']).
	self assert: (self model class savedPins noneSatisfy: [:pin | pin alias = 'Munich']).
