searching
testPlacePin

	| mapPins longLatMunich |
	
	longLatMunich := 11.576124@48.137154.
	
	self squeakMapsWindow placeCenteredPinAt: longLatMunich.
	mapPins :=  self squeakMapsWindow tiledMapMorph pins select: [:pin | pin longLat = longLatMunich].
	
	self assert: mapPins notEmpty.
	self assert: (SMAMapTileLoader longLatToWorldPos: longLatMunich) equals: self squeakMapsWindow tiledMapMorph center.
	self assert: self squeakMapsWindow tiledMapMorph zoom equals: self squeakMapsWindow tiledMapMorph defaultZoom