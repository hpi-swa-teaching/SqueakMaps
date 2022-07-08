pin testing
testSelectSavedPin

	| mapLocations location |

	location := SMALocation new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		boundingBox: (11.360777@48.0616244 corner: 11.7229099@48.2481162);
		yourself.
		
	SMAWindow savedPins add: location.

	[pinManagementButton click] valueSupplyingAnswers: {{'Saved Pins' . 'Munich (11.576124@48.137154)'}}.

	mapLocations :=  model tiledMapMorph markers select: [:marker | marker latLong = location latLong].
	
	self assert: mapLocations notEmpty.
	self assert: (SMAMapConfigurator latLongToWorldPos: location latLong)  equals: model tiledMapMorph center.
	self assert: 9 equals: model tiledMapMorph zoom