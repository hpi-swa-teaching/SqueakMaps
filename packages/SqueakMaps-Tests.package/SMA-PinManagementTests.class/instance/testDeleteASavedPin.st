as yet unclassified
testDeleteASavedPin
	| latLongMunich latLongBerlin savedPinsBefore munichMarker berlinMarker berlinPins munichPins |
	
	savedPinsBefore := SMAWindow savedPins.
	latLongMunich := 11.576124@48.137154.
	latLongBerlin := 13.3888599@52.5170365.
	munichMarker := (MapLocationMarker new) label: 'München';
		latLong: latLongMunich.
	berlinMarker := (MapLocationMarker new) label: 'Berlin';
		latLong: latLongBerlin.	
		
	SMAWindow savedPins: nil.
	
	SMAWindow savedPins add: munichMarker; 
		add: berlinMarker.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'delete a saved pin'} . {'choose a pin' . 'München (11.576124@48.137154)'}}.
	
	berlinPins := SMAWindow savedPins select: [:pin | pin latLong = latLongBerlin].
	munichPins :=  SMAWindow savedPins select: [:pin | pin latLong = latLongMunich].
	self assert: berlinPins notEmpty.
	self assert: munichPins isEmpty.
	
	SMAWindow savedPins = savedPinsBefore.