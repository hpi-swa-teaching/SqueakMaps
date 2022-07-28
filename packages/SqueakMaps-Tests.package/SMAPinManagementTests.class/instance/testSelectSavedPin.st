pin testing
testSelectSavedPin

	| location |

	location := SMALocation new
		coordinates: (SMAGeoCoordinate newFrom: 11.576124 @ 48.137154);
		label: 'Munich';
		boundingBox: (11.360777 @ 48.0616244 corner: 11.7229099 @ 48.2481162);
		yourself.
		
	SMAWindow savedPins add: location.

	[self pinManagementButton click] valueSupplyingAnswers: {{'Saved Pins' . 'Munich (48.137154 °N, 11.576124 °E)'}}.
	
	self assert: self model tiledMapMorph markers size = 1.
	self assert: (SMAMapConfigurator geoCoordinatesToWorldPos: location coordinates)  equals: self model tiledMapMorph center.
	self assert: 9 equals: self model tiledMapMorph zoom