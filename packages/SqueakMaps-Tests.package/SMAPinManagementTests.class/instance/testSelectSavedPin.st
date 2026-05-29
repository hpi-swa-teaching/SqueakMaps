pin testing
testSelectSavedPin

	| location |

	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		category: SMAPinCategory defaultCategory;
		yourself.
		
	SMAApplication savedPins add: location.

	[self pinManagementButton click] valueSupplyingAnswers: { { 'Saved Pins' . '(Uncategorized) Munich' } }.
"Munich (48.137154 °N, 11.576124 °E)"
	
	self assert: self model tiledMapMorph markers size = 1.
	
	self assert: ((SMAMapConfigurator geoCoordinatesToWorldPos: location coordinates) - self model tiledMapMorph center) < (0.1@0.1).
	self assert: 9 equals: self model tiledMapMorph zoom