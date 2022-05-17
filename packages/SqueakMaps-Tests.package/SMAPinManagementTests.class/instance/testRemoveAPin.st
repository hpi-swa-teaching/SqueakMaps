pin testing
testRemoveAPin

	| longLatMunich longLatBerlin berlinPins munichPins |
	
	longLatMunich := 11.576124@48.137154.
	longLatBerlin := 13.3888599@52.5170365.
	self subject tiledMapMorph placePinAt: longLatMunich labeled: 'Munich'.
	self subject tiledMapMorph placePinAt: longLatBerlin labeled: 'Berlin'.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'remove a pin'} . {'choose a pin' . 'Berlin (13.3888599@52.5170365)'}}.

	berlinPins := self subject tiledMapMorph pins select: [:pin | pin longLat = longLatBerlin].
	munichPins :=  self subject tiledMapMorph pins select: [:pin | pin longLat = longLatMunich].
	
	self assert: berlinPins isEmpty.
	self assert: munichPins notEmpty