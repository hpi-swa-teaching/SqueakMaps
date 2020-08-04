classTesting
testPlacePin
	| mapPins latLongMunich |
	
	latLongMunich := 11.576124@48.137154.
	self squeakMapsWindow placeCenteredPinAt: latLongMunich.
	
	mapPins :=  self squeakMapsWindow tiledMapMorph pins select: [:pin | pin latLong = latLongMunich].
	self assert: mapPins notEmpty.
	self assert: (MapTileLoader latLongToWorldPos: latLongMunich) equals: self squeakMapsWindow tiledMapMorph center.
	self assert: self squeakMapsWindow tiledMapMorph zoom equals: self squeakMapsWindow tiledMapMorph defaultZoom