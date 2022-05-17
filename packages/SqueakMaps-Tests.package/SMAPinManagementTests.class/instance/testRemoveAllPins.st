pin testing
testRemoveAllPins

	| longLatMunich longLatBerlin |
	
	longLatMunich := 11.576124@48.137154.
	longLatBerlin := 13.3888599@52.5170365.
	
	self subject placeCenteredPinAt: longLatMunich.
	self subject placeCenteredPinAt: longLatBerlin.
	[pinManagementButton click] valueSupplyingAnswer: {'choose action to perform' . 'remove all pins'}.

	self assert: self subject tiledMapMorph pins isEmpty