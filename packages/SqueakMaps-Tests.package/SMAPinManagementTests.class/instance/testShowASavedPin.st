as yet unclassified
testShowASavedPin
	| latLongMunich munichMarker mapPins |
	
	latLongMunich := 11.576124@48.137154.
	munichMarker := (MapLocationMarker new) label: 'München';
		latLong: latLongMunich.
	
	SMAWindow savedPins add: munichMarker.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'show a saved pin'} . {'choose a pin' . 'München (11.576124@48.137154)'}}.
	mapPins :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	self assert: mapPins notEmpty.
	self assert: (MapTileLoader latLongToWorldPos: latLongMunich) equals: self subject tiledMapMorph center