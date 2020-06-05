acceptanceTests
testPlacePin
	| result latLongMunich |
	
	latLongMunich := 11.576124@48.137154.
	self subject placePinAt: latLongMunich.
	
	result :=  self subject tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	self assert: result notEmpty.
	self assert: (MapTileLoader latLongToWorldPos: latLongMunich)  equals: self subject tiledMapMorph center.
	self assert: self subject tiledMapMorph zoom equals: 10