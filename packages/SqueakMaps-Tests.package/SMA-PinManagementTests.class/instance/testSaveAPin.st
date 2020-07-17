as yet unclassified
testSaveAPin
	| latLongMunich savedPinsBefore |
	
	latLongMunich := 11.576124@48.137154.
	self subject tiledMapMorph placePinAt: latLongMunich labeled: 'test pin'.
	savedPinsBefore := SMAWindow savedPins.
	SMAWindow savedPins: nil.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'save a pin'} . {'choose a pin' . 'test pin (11.576124@48.137154)'} . {'please set the name of the chosen pin' . 'save pin test'}}.
	self assert: ((SMAWindow savedPins collect: [:pin | pin label asString]) contains: 'test pin (11.576124@48.137154)').
	SMAWindow savedPins: savedPinsBefore