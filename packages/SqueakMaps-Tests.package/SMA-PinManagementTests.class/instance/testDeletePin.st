as yet unclassified
testDeletePin
	| latLongMunich latLongBerlin berlinPins munichPins |
	
	latLongMunich := 11.576124@48.137154.
	self subject tiledMapMorph placePinAt: latLongMunich labeled: 'Munich'.
	latLongBerlin := 13.3888599@52.5170365.
	self subject tiledMapMorph placePinAt: latLongBerlin labeled: 'Berlin'.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'remove a pin'} . {'choose a pin' . 'Berlin (13.3888599@52.5170365)'}}.
	berlinPins := self subject tiledMapMorph pins select: [:pin | pin latLong = latLongBerlin].
	munichPins :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	self assert: berlinPins isEmpty.
	self assert: munichPins notEmpty