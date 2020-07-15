as yet unclassified
testSaveButton
	| munichPins latLongMunich |
	
	latLongMunich := 11.576124@48.137154.
	self subject placeCenteredPinAt: latLongMunich.
	
	[saveButton click] valueSupplyingAnswer: {'Please Choose' . 'München (11.576124@48.137154)'}.
	self assert: self subject savedPins  equals: ThunderforestTileSource