as yet unclassified
testSaveAPin
	| latLongMunich savedPinsBefore |
	
	latLongMunich := 11.576124@48.137154.
	self subject placeCenteredPinAt: latLongMunich.
	savedPinsBefore := SMAWindow savedPins.
	SMAWindow savedPins: nil.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'save a pin'} . {'choose a pin' . 'München (11.576124@48.137154)'} . {'please set the name of the chosen pin' . 'save pin test'}}.
	self assert: (SMAWindow savedPins contains: 'save pin test').
	SMAWindow savedPins: savedPinsBefore