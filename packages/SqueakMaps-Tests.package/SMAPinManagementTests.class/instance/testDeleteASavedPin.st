pin testing
testDeleteASavedPin

	| longLatMunich longLatBerlin munichMarker berlinMarker berlinPins munichPins |
	
	longLatMunich := 11.576124@48.137154.
	longLatBerlin := 13.3888599@52.5170365.
	munichMarker := (SMAMapLocationMarker new) 
		label: 'München';
		longLat: longLatMunich.
	berlinMarker := (SMAMapLocationMarker new) 
		label: 'Berlin';
		longLat: longLatBerlin.	
	
	SMAWindow savedPins 
		add: munichMarker; 
		add: berlinMarker.
	
	[pinManagementButton click] valueSupplyingAnswers: {{'choose action to perform' . 'delete a saved pin'} . {'choose a pin' . 'München (11.576124@48.137154)'}}.
	
	berlinPins := SMAWindow savedPins select: [:pin | pin longLat = longLatBerlin].
	munichPins :=  SMAWindow savedPins select: [:pin | pin longLat = longLatMunich].
	
	self assert: berlinPins notEmpty.
	self assert: munichPins isEmpty