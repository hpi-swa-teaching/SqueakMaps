pin testing
testRemoveAPin
	| latLongMunich latLongBerlin berlinPins munichPins |
	
	latLongMunich := 11.576124@48.137154.
	model tiledMapMorph placePinAt: latLongMunich labeled: 'Munich'.
	latLongBerlin := 13.3888599@52.5170365.
	model tiledMapMorph placePinAt: latLongBerlin labeled: 'Berlin'.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'remove a pin'} . {'choose a pin' . 'Berlin (13.3888599@52.5170365)'}}.
	berlinPins := model tiledMapMorph pins select: [:pin | pin latLong = latLongBerlin].
	munichPins :=  model tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	self assert: berlinPins isEmpty.
	self assert: munichPins notEmpty