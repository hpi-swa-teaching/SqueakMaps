pin testing
testShowASavedPin

	| longLatMunich munichMarker mapPins |
	
	longLatMunich := 11.576124@48.137154.
	munichMarker := (SMAMapLocationMarker new) 
		label: 'München';
		longLat: longLatMunich.
	
	SMAWindow savedPins add: munichMarker.
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'show a saved pin'} . {'choose a pin' . 'München (11.576124@48.137154)'}}.
	mapPins :=  self subject tiledMapMorph pins select: [:pin | pin longLat = longLatMunich].
	
	self assert: mapPins notEmpty.
	self assert: (SMAMapTileLoader longLatToWorldPos: longLatMunich) equals: self subject tiledMapMorph center