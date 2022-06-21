pin testing
testSelectSavedPin

	| mapPins pin |
	
	pin := SMAPin new
		latLong: 11.576124@48.137154;
		label: 'Munich';
		yourself.
		
	SMAWindow savedPins add: pin.

	[pinManagementButton click] valueSupplyingAnswers: {{'Saved Pins' . 'Munich (11.576124@48.137154)'}}.

	mapPins :=  model tiledMapMorph pins select: [:p | p latLong = pin latLong].
	
	self assert: mapPins notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: pin latLong)  equals: model tiledMapMorph center.
	self assert: model tiledMapMorph defaultZoom equals: model tiledMapMorph zoom