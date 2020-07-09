as yet unclassified
testDoubleClick

	| latLongMunich munichPins aMouseEvent |
	
	latLongMunich := 13.384846@52.5509201.
	self subject center: (MapTileLoader latLongToWorldPos: latLongMunich).
	
	self subject clickAtAbsolute: (self subject bottomRight - self subject topLeft) /2.
	self subject clickAtAbsolute: (self subject bottomRight - self subject topLeft) /2.
	
	self subject doubleClick: aMouseEvent.
	
	munichPins :=  self subject pins select: [:pin | pin latLong = latLongMunich].
 	self assert: munichPins notEmpty
	
	