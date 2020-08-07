pin testing
testPlacePin
	| munichPins latLongMunich |
	
	latLongMunich := 11.576124@48.137154.
	self subject placeCenteredPinAt: latLongMunich.
	
	munichPins :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	
	self assert: munichPins notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: latLongMunich)  equals: self subject tiledMapMorph center.
	self assert: self subject tiledMapMorph defaultZoom equals: self subject tiledMapMorph zoom