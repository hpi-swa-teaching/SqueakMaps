pin testing
testRemoveAllPins
	| latLongMunich latLongBerlin |
	
	latLongMunich := 11.576124@48.137154.
	model placeCenteredPinAt: latLongMunich.
	latLongBerlin := 13.3888599@52.5170365.
	model placeCenteredPinAt: latLongBerlin.
	
	[pinManagementButton click] valueSupplyingAnswer: {'choose action to perform' . 'remove all pins'}.
	self assert: model tiledMapMorph pins isEmpty