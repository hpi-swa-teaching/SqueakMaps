pin testing
testRenamePin

	| location menu item |

	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: SMAPinCategory defaultCategory;
		yourself.
		
	SMAApplication savedPins add: location.

	[self pinManagementButton click] valueSupplyingAnswers: { { 'Saved Pins' . '(Uncategorized) Munich' } }.
"Munich (48.137154 °N, 11.576124 °E)"

	(self subject findByLabel: 'Pin Options') click. 
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'Rename Pin'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {{ 'New Name' . 'Test ReName'}}.
	
	menu delete.
	self assert: (self model class savedPins anySatisfy: [:pin | pin alias = 'Test ReName']).
	self assert: (self model class savedPins noneSatisfy: [:pin | pin alias = 'Munich']).
