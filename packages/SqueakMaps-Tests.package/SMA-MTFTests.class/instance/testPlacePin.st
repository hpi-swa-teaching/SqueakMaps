acceptanceTests
testPlacePin
	| munichPins latLongMunich |
	
	latLongMunich := 11.576124@48.137154.
	self subject placePinAt: latLongMunich.
	
	munichPins :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	
	self assert: munichPins notEmpty.
	self assert: (MapTileLoader latLongToWorldPos: latLongMunich)  equals: self subject tiledMapMorph center.
	self assert: self subject defaultZoom equals: self subject tiledMapMorph zoom