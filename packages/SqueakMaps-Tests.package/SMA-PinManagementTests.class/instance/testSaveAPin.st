as yet unclassified
testSaveAPin
	| latLongMunich savedPinsBefore |
	
	latLongMunich := 11.576124@48.137154.
	self subject tiledMapMorph placePinAt: latLongMunich labeled: 'München'.
	
	savedPinsBefore := SMAWindow savedPins.
	SMAWindow savedPins: nil.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'save a pin'} . {'choose a pin' . 'München (11.576124@48.137154)'} . {'please set the name of the chosen pin' . 'save pin test'}}.
	self assert: ((SMAWindow savedPins collect: [:pin | pin label asString]) notEmpty).
	self assert: 1 equals: ((SMAWindow savedPins collect: [:pin | pin label asString]) indexOf: 'save pin test').
	SMAWindow savedPins: savedPinsBefore