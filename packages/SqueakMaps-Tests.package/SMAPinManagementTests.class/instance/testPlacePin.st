pin testing
testPlacePin
	| munichPins latLongMunich |
	
	latLongMunich := 11.576124@48.137154.
	model placeCenteredPinAt: latLongMunich.
	
	munichPins :=  model tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	
	self assert: munichPins notEmpty.
	self assert: (SMAMapTileLoader latLongToWorldPos: latLongMunich)  equals: model tiledMapMorph center.
	self assert: model tiledMapMorph defaultZoom equals: model tiledMapMorph zoom