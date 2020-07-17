as yet unclassified
testDeleteAllPins
	| latLongMunich latLongBerlin |
	
	latLongMunich := 11.576124@48.137154.
	self subject placeCenteredPinAt: latLongMunich.
	latLongBerlin := 13.3888599@52.5170365.
	self subject placeCenteredPinAt: latLongBerlin.
	
	[pinManagementButton click] valueSupplyingAnswer: {'choose action to perform' . 'remove all pins'}.
	self assert: self subject tiledMapMorph pins isEmpty