pin testing
testSelectSavedPin

	| mapPins pin |

	pin := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		boundingBox: (11.360777@48.0616244 corner: 11.7229099@48.2481162);
		yourself.
		
	SMAWindow savedPins add: pin.

	[pinManagementButton click] valueSupplyingAnswers: {{'Saved Pins' . 'Munich (11.576124@48.137154)'}}.

	mapPins :=  model tiledMapMorph markers select: [:marker | marker latLong = pin latLong].
	
	self assert: mapPins notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: pin latLong)  equals: model tiledMapMorph center.
	self assert: 9 equals: model tiledMapMorph zoom